//
//  main.swift
//  Singleton
//
//  Created by MacStudent on 2018-02-16.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

//var obj1 = MySingleton()
//MySingleton.instant.getMyName();

print(MySingleton.getInstant().getMyName())

var obj2 = MySingleton.getInstant()
print(obj2.getMyName())

var obj3 = MySingleton.getInstant()
print(obj3.getMyName())
