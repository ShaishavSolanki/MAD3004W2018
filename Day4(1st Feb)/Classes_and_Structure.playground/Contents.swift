//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


print("===Classses and Structure===")

//Declaring a structure

struct project{
    var title = " "
    var hours = 0
    
    func display(){
        print("Project Title : ",title)
        print("Total work hours required : ",hours)
    }
}


//Declaring insatnce of strcture
var LMSProject = project(title: "Moodle", hours : 200)
print(LMSProject)

//Calling using function declared in structure
LMSProject.display()

//Changing value
LMSProject.hours = 300
LMSProject.display()


//declaring a CLASS

class Manager{
    var name : String = ""
    var productOwner : Bool = true
    var currentProjects = project()
    
}

//creating instance of class
let mgrCanada = Manager()
mgrCanada.name = "SS"
mgrCanada.productOwner = true
mgrCanada.currentProjects=project(title: "Slaes Reporting", hours: 20)

print("mgrCanada Name : ",mgrCanada.name)
print("mgrCanada product Owner : ",mgrCanada.productOwner)
print("mgrCanada current project Hours : ",mgrCanada.currentProjects)

//stucture are Values Types
struct address{
    var street = "265 yorkland Blvd"
    var city = "north york"
    var postalCode = "M1H1Y1"
    
    
}

var lambton = address()
print("Lambton : ",lambton)

var cestar = lambton

print("Cestar : ",cestar)

cestar.street = "271 yorkland Blvd"
cestar.postalCode = "M1H1Y3"
print("Cestar : ",cestar)

print("Lambton : ",lambton)

//classes are Reference  Types

class Institute{
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}

var myLambton = Institute()
print("myLambton street : ",myLambton.street)
print("myLambton city : ",myLambton.city)
print("myLambton postalCode : ",myLambton.postalCode)

var myCestar = myLambton
print("myCestar street : ",myCestar.street)
print("myCestar city : ",myCestar.city)
print("myCestar postalCode : ",myCestar.postalCode)

myCestar.street = "271 yorkland blvd"
myCestar.postalCode = "M1H3Y3"

print("myCestar street : ",myCestar.street)
print("myCestar postalCode : ",myCestar.postalCode)

print("myLambton street : ",myLambton.street)
print("myLambton postalCode : ",myLambton.postalCode)

//identical to ====
if myLambton === myCestar {
    print("lambton and cestar are same")
    
}
else{
    print("lambron and cestar are NOT same")
}
var yourcestar = Institute()
if yourcestar ===  myCestar{
        print("YourCestar and myCestar are same")
}
else{
       print("yourCestar and myCestar are NOT same")
}

