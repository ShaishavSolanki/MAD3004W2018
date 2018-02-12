//
//  main.swift
//  Day11(12th Feb Access Control)
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")


//var objStud = Student()
//objStud.display()

//var objFull = FullTime()
//objFull.display()

var objPart = PartTime()
//objPart.sname

class T: ExtendPartTime {
    override init() {
        super.init()
        print("Display T")
    }
}

var t1 = T()

