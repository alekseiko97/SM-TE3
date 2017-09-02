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

public class Person
{
    var firstName: String
    var lastName: String
    var pcn: Int

    public init(firstName: String, lastName: String, pcn: Int)
    {
        
        self.firstName = firstName
        self.lastName = lastName
        self.pcn = pcn
    }
    
}


public class Student : Person
{
    var ec: Int
    var studentNr: Int
    var profile: Profile
 
    public init(firstName: <#T##String#>, lastName: <#T##String#>, pcn: <#T##Int#>, ec: Int, studentNr: Int, profile: Profile)
    {
        super.init(firstName: firstName, lastName: lastName, pcn: pcn)
        self.ec = ec
        self.studentNr = studentNr
        self.profile = profile
        
    }
}

public class Lecturer : Person
{
    var salary : Double
    var function: Function
    
    
    public init(firstName: <#T##String#>, lastName: <#T##String#>, pcn: <#T##Int#>, salary: Double, function: Function)
    {
        super.init(firstName: firstName, lastName: lastName, pcn: pcn)
        self.salary = salary
        self.function = function
    }
}

public class Group
{
    var studentList = [Student]()
    var lecturerList = [Lecturer]()
    func AddStudentToTheGroup(newStudent: Student)
    {
        studentList.append(newStudent)
    }
    
    func AddLecturerToTheGroup(newLecturer: Lecturer)
    {
        lecturerList.append(newLecturer)
    }
    
}

public class Registration
{
    var isRegistered: Bool
    
    public init()
    {
        
    }
}

//country ec st num
//salary func
  //  name pcn age yearsatFontys
