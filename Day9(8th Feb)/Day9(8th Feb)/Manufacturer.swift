//
//  Manufacturer.swift
//  Day9(8th Feb)
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Manufacturer {
    var name: String
    
    
    //Designated initializer
    init(name:String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "[Unknown]")
    }
}
