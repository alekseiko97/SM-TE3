//: Playground - noun: a place where people can play

import UIKit


enum Profile : String
{
    case BUSINESS, SOFTWARE, TECHNOLOGY
}

enum Function : String
{
    case JUNIOR_DOCENT, DOCENT_1, DOCENT_2, INTERNSHIP_COORDINATOR, TEAM_LEADER, DIRECTOR
}

 class Person
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


 class Student : Person
{
    var studentNr: Int
    var profile: Profile
 
     init(firstName: String, lastName: String, pcn: Int, studentNr: Int, profile: Profile)
    {
        
        self.studentNr = studentNr
        self.profile = profile
        super.init(firstName: firstName, lastName: lastName, pcn: pcn)
        
        
    }
}



class Lecturer : Person
{
    var salary : Double
    var function: Function
    
    
     init(firstName: String, lastName: String, pcn: Int, salary: Double, function: Function)
    {
        
        self.salary = salary
        self.function = function
        super.init(firstName: firstName, lastName: lastName, pcn: pcn)
        
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
        self.studentList = []
    }
    
    func GetNrOfAllStudents() -> Int
    {
        return self.studentList.count
    }
    
    func GetStudent(studentNr: Int) -> Student?
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
    
    func AddStudentToTheGroup(newStudent: Student)
    {
        for st in studentList
        {
            if newStudent.studentNr == st.studentNr
            {
                 print("This student already exists in this group")
                 studentList.removeLast() // Removes the last added student that was already in the group
                
            }
            
        }
        studentList.append(newStudent)
    }
    
    /* func AddStudent(firstName: String, lastName: String, pcn: Int, studentNr: Int, profile: Profile)
    {
        if (GetStudent(studentNr: studentNr) == nil)
        {
            let s = Student(firstName: firstName, lastName: lastName, pcn: pcn, studentNr: studentNr, profile: profile)
            studentList.append(s)
        }
        else
        {
            print("Student with \(studentNr) already exists")
        }
    } */
    
    func AddNewLecturerToTheGroup(newLecturer: Lecturer)
    {
        self.lecturer = newLecturer
    }
    func RemoveLecturerFromTheGroup()
    {
        self.lecturer = nil
        print("No teacher is assigned to the group")
    }
    
    func RemoveStudentFromTheGroup(student: Student)
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
    init()
    {
        self.regStudents = []
    }
    func RegisterStudent(student: Student)
    {
        
    }
}


var lecturer1 = Lecturer(firstName: "John", lastName: "Lennon", pcn: 123456, salary: 750.00, function: Function.INTERNSHIP_COORDINATOR)
var group1 = Group(groupName: "A", lecuturer: lecturer1)
var lecturer2 = Lecturer(firstName: "Donald", lastName: "Trump", pcn: 234123, salary: 10000.00, function: Function.DIRECTOR)
var student1 = Student(firstName: "Aleksei", lastName: "M", pcn: 360992, studentNr: 3008908, profile: Profile.SOFTWARE)
var student2 = Student(firstName: "Bob", lastName: "Marley", pcn: 345934, studentNr: 532123, profile: Profile.BUSINESS)

group1.AddStudentToTheGroup(newStudent: student1)
group1.AddStudentToTheGroup(newStudent: student2)
group1.RemoveStudentFromTheGroup(student: student2)
print(group1.GetNrOfAllStudents())
print(group1.lecturer?.firstName)
group1.AddNewLecturerToTheGroup(newLecturer: lecturer2)
print(group1.lecturer?.firstName)
group1.RemoveLecturerFromTheGroup()
print(group1.lecturer?.firstName)







