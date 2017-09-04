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

 class Group
{
    var studentList = [Student]()
    var lecturerList = [Lecturer]()
    
    init()
    {
        
    }
    
    func AddStudentToTheGroup(newStudent: Student)
    {
        studentList.append(newStudent)
    }
    
    func AddLecturerToTheGroup(newLecturer: Lecturer)
    {
        lecturerList.append(newLecturer)
    }
    func GetNrOfAllStudents() -> Int
    {
        return self.studentList.count
    }
    func GetNrOfAllLecrurers() -> Int
    {
        return self.lecturerList.count
    }

    
    
}

class Registration
{
    
}

var student1 = Student(firstName: "Aleksei", lastName: "M", pcn: 360992, studentNr: 3008908, profile: Profile.SOFTWARE)
var student2 = Student(firstName: "Bob", lastName: "Marley", pcn: 345934, studentNr: 532123, profile: Profile.BUSINESS)
var lecturer1 = Lecturer(firstName: "John", lastName: "Lennon", pcn: 123456, salary: 750.00, function: Function.INTERNSHIP_COORDINATOR)

var group = Group()

group.AddStudentToTheGroup(newStudent: student1)
group.AddStudentToTheGroup(newStudent: student2)
group.AddLecturerToTheGroup(newLecturer: lecturer1)

print(group.GetNrOfAllStudents() + group.GetNrOfAllLecrurers())


