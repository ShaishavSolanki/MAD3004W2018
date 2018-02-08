//
//  main.swift
//  Day9(8th Feb)
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")


// ------ Product.swift -----
print("\n")
let laptop = Product(name: "Laptop")

if let machine = laptop {
    print("Product name is \(machine.name)")
    
}
print("\n")
let anonymousMachine = Product(name: "")

if anonymousMachine == nil {
    print("The anonymous Machine could not be initialized")
}

// ----- CartItem.swfit ------
print("\n")
if let oneProjector = CartItem(name: "Projector", quantity: 0){
    print("Cart contains \(oneProjector.quantity) \(oneProjector.name)")
}else{
    print("Unable to initialize the cart")
}



//------ License.swift,Person.swfit -------
print("\n")
if let license = License(firstname: "B", lastname: "B", age: 12) {
    print("--- License ---")
    print("Hey \(license.firstName) \(license.lastName) You are Eligible to apply for license")
}else {
     print("--- License ---")
    print("You are not eligible to apply for license")
}

print("\n")
if let license1 = License(firstname: "Shaishav", lastname: "Solanki", age: 22) {
     print("--- License ---")
    print("Hey \(license1.firstName) \(license1.lastName) you are eligible")
}else {
     print("--- License ---")
    print("You are not eligible")
}



//-------- Manufacturer.swift --------
print("\n")
print("\n")
var objManu = Manufacturer(name: "Audi")
print("ManufacturerName: \(objManu.name)")

//Not passing any name it will pass the value using convienece init in which the value is unknown
print("\n")
var obj1Manu = Manufacturer()
print("ManufacturerName: \(obj1Manu.name)")


//------ Vehicle.swift --------
print("\n")
var vehic = Vehicle(name: "Ford", noOfWheels: 4)
print("VehicleName: \(vehic.name)  noOfWheels: \(vehic.noOfWheels)")

print("\n")
var vehic1 = Vehicle()
print("VehicleName: \(vehic1.name) NoOfWheels: \(vehic1.noOfWheels)")


// ------- Preference.swift ----

let preference = Preference()
print(preference.description)



// ------- TimeTable.swift -----
// SUBSCRIPT
print("\n")
let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")




/// -- STURCT MATRIX ----\
print("\n")
var matrix = Matrix(rows:2, columns:2)
print("\(matrix.grid)")

matrix[0,1] = 1.5
matrix[1,0] = 3.2

print("\(matrix.grid)")
