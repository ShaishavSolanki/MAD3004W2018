//
//  Employee.swift
//  StaticAndFinal
//
//  Created by MacStudent on 2018-02-14.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Employee{
    
    let MIN_PAY = 11.60
    var a : String?
    
    static var noOfObject = 0
    init() {
        Employee.noOfObject += 1
    }
    
    static func getNoOfObject() -> Int {
        
        return noOfObject
    }
    
    func greet (name: String)
    {
        print("Employee : : Want to join the team? \(name)")
    }
    deinit {
        print("Employee Deinit")
    }
}


