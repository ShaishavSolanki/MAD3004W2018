//
//  Vehicle.swift
//  Day9(8th Feb)
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class Vehicle: Manufacturer {
    
    var noOfWheels: Int
    
    init(name: String, noOfWheels: Int) {
        self.noOfWheels = noOfWheels
        super.init(name: name)
    }
    
    // overriding convience init from manufacturer.swift
    override convenience init(name: String) {
        self.init(name: name, noOfWheels: 0)
    }
}
