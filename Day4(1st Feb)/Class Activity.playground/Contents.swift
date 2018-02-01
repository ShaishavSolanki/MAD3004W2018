//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct address{
    var street = "265 yorkland Blvd"
    var city = "north york"
    var postalCode = "M1H1Y1"
    
    
}

class Person{
    var firstname = "SS"
    var lastname = "Solanki"
    var age = 50
    var add = address()
    var totalamount = 2000
}

var myself = Person()
print("firstName : ",myself.firstname)
print("lastName : ",myself.lastname)
print("age : ",myself.age)
print("address :- ")
print("             Street : ",myself.add.street)
print("             area : ",myself.add.city)
print("             postalCode : ",myself.add.postalCode)
print("totalAmount : ",myself.totalamount)

