//
//  main.swift
//  StaticAndFinal
//
//  Created by MacStudent on 2018-02-14.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")


var e1 = Employee()
print(Employee.getNoOfObject())
e1.greet(name: "Shaishav")

var e2 = Employee()
print(Employee.getNoOfObject())


var p1 = PartTime()
p1.greet(name: "p1")

e1 = p1
e1.greet(name: "NAME")

var r1 : Employee
r1 = Employee()
r1.greet(name: "Employee")

r1 = PartTime()
r1.greet(name: "Parttime")


//Reference
p1 = e1 as! PartTime
p1.greet(name: "Sunny")


// -------------- JSON ---------------------

let tutorial = Tutorial(title: "Whats New in Swift 4?", author: "Cosmin Pupåzå",editor: "Simon Ng", type: "Swift", publishDate: Date())

let encoder = JSONEncoder()
let data = try encoder.encode(tutorial)
let jsonString = String(data: data, encoding: .utf8)

print(jsonString ?? "")

let decoder = JSONDecoder()
let article = try decoder.decode(Tutorial.self, from: data)
let info = "\(article.title) \(article.author) \(article.editor) \(article.type) \(article.publishDate)"

print(info)
