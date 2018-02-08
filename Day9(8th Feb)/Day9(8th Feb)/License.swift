//
//  License.swift
//  Day9(8th Feb)
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class License: Person {
    
    var age: Int?
    
    init?(firstname:String, lastname: String, age:Int) {
        
        if age > 16 {
            super.init(firstname: firstname, lastname: lastname)
            self.age = age
            
        }
        else{
           // print("Not eligible for license")
            return nil
        }
       
        
    }
    
}
