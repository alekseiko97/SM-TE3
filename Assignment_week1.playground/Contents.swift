
import UIKit


enum Profile : String
{
    case BUSINESS, SOFTWARE, TECHNOLOGY
}

enum Function : String
{
    case JUNIOR_DOCENT, DOCENT_1, DOCENT_2, INTERNSHIP_COORDINATOR, DIRECTOR
}

 class Person // base class
{
    var firstName: String
    var lastName: String
    var pcn: Int

    init(firstName: String, lastName: String, pcn: Int)
    {
        
        self.firstName = firstName
        self.lastName = lastName
        self.pcn = pcn
    }
    
}


 class Student : Person, CustomStringConvertible // inherits from class Person and auto-describing object class
{
    var studentNr: Int
    var profile: Profile
 
     init(firstName: String, lastName: String, pcn: Int, studentNr: Int, profile: Profile)
    {
        
        self.studentNr = studentNr
        self.profile = profile
        super.init(firstName: firstName, lastName: lastName, pcn: pcn)
        
        
    }
    
    var description: String
    {
        return "First name: \(firstName), last name: \(lastName), pcn: \(pcn), student number: \(studentNr), profile: \(profile)"
    }
    
}



class Lecturer : Person, CustomStringConvertible //inherits from class Person and auto-describing object class
{
    var salary : Double
    var function: Function
    
    
     init(firstName: String, lastName: String, pcn: Int, salary: Double, function: Function)
    {
        
        self.salary = salary
        self.function = function
        super.init(firstName: firstName, lastName: lastName, pcn: pcn)
        
    }
    
    var description: String
    {
        return "First name: \(firstName), last name: \(lastName), pcn: \(pcn), salary: \(salary), function: \(function)"
    }
}

public class Group
{
    var groupName : Character
    var studentList : [Student]
    var lecturer : Lecturer?
    
    init(groupName: Character, lecuturer: Lecturer?)
    {
        self.groupName = groupName
        self.lecturer = lecuturer
        self.studentList = [] // creates a new array of student objects
    }
    
    func GetNrOfAllStudents() -> Int // returns the number of students in the group
    {
        return self.studentList.count
    }
    
    func GetStudent(studentNr: Int) -> Student? // gets student by his/her student number
    {
        for st in studentList
        {
            if st.studentNr == studentNr
            {
                return st
            }
        }
        return nil
    }
    
    func AddStudentToTheGroup(newStudent: Student) // adds new student to the group
    {
        for st in studentList
        {
            if newStudent.studentNr == st.studentNr
            {
                 print("This student already exists in this group")
                return
            }
            
        }
        studentList.append(newStudent)
    }
    
    func AddNewLecturerToTheGroup(newLecturer: Lecturer) // replaces the teacher in the group
    {
        self.lecturer = newLecturer
    }
    func RemoveLecturerFromTheGroup() // removes the teacher from the group
    {
        self.lecturer = nil
        print("No teacher is assigned to the group")
    }
    
    func RemoveStudentFromTheGroup(student: Student) // removes the student from the group
    {
        var counter = 0
        for st in studentList
        {
            
            if (st.studentNr == student.studentNr)
            {
                
                studentList.remove(at: counter)
                
            }
            counter+=1
        }
    }
    
}

class Registration
{
    var regStudents : [Student]
    var group: Group
    init(group: Group)
    {
        self.regStudents = []
        self.group = group
    }
    func RegisterStudent(student: Student) // registers student in the system and adds it to the group
    {
        for stnd in regStudents
        {
            if stnd.studentNr == student.studentNr
            {
                print("This student is already registered")
                return
            }
        }
        regStudents.append(student)
        group.AddStudentToTheGroup(newStudent: student)
    }
}

var lecturer1 = Lecturer(firstName: "John", lastName: "Lennon", pcn: 123456, salary: 750.00, function: .INTERNSHIP_COORDINATOR)
var group1 = Group(groupName: "A", lecuturer: lecturer1)
var lecturer2 = Lecturer(firstName: "Donald", lastName: "Trump", pcn: 234123, salary: 10000.00, function: .DIRECTOR)
var student1 = Student(firstName: "Aleksei", lastName: "M", pcn: 360992, studentNr: 3008908, profile: .SOFTWARE)
var student2 = Student(firstName: "Bob", lastName: "Marley", pcn: 345934, studentNr: 532123, profile: .BUSINESS)
var student3 = Student(firstName: "Alan", lastName: "Smith", pcn: 127545, studentNr: 382999, profile: .TECHNOLOGY)
var registration = Registration(group: group1)
registration.RegisterStudent(student: student3)

group1.AddStudentToTheGroup(newStudent: student1)
group1.AddStudentToTheGroup(newStudent: student1) // try to add the same student twice in the same group
group1.AddStudentToTheGroup(newStudent: student2)
group1.RemoveStudentFromTheGroup(student: student2)
print(group1.GetNrOfAllStudents()) // displays current number of students in the group
print(group1.lecturer)
group1.AddNewLecturerToTheGroup(newLecturer: lecturer2)
print(group1.lecturer)
group1.RemoveLecturerFromTheGroup()
print(group1.lecturer)
print(student1)







