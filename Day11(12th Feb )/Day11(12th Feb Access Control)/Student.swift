//
//  Student.swift
//  Day11(12th Feb Access Control)
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

private class Student{
    
    var sname: String?
    
    init() {
        self.sname = "Student Name"
    }
    func setStudentName(sname: String) {
        self.sname = sname
    }
    func getStudentName() -> String
    {
        return self.sname!
    }
    fileprivate func display()
    {
        print("I am a private method of Student Class")
    }
   private func display(message: String)
    {
        print("Hello \(message)")
    }
    
}

private class FullTime: Student
{
    var subject: String?
    
    override init(){
        self.subject = "Fulltime Subject"
    }
    
    
    private func setSubject(subject: String)
    {
        self.subject = subject
    }
    
    //private func display
  //  private func displaY()
   // {
        //not possible and not inherited
        //super.display()
        
  //      print("I am method of FullTime Class")
  //      super.display(message: "FILE PRIVATE")
  //  }
    
    
    
}
