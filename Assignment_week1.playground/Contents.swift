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
    
}

var student1 = Student(firstName: "Aleksei", lastName: "M", pcn: 360992, studentNr: 3008908, profile: Profile.SOFTWARE)

var group = Group()

group.AddStudentToTheGroup(newStudent: student1)



//country ec st num
//salary func
  //  name pcn age yearsatFontys
