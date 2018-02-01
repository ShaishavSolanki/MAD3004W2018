//: Playground - noun: a place where people can play


//DICTIONARIES(COLLECTION TYPES)////
import UIKit

var str:String? = nil


//Declaring dictionaries

var nameOfIntegers = [Int : String]()   // declaring a dictionary with a datatype Int for key and String for values, also here the decalred dictionary is empty

nameOfIntegers[16] = "sixteen"      //nameodintegers now contains 1 key-value pair
print("nameOfIntegers : \(nameOfIntegers)")

print("dictionary contains \(nameOfIntegers.count) elements")

//adding another values to dicitonary
nameOfIntegers[28] = "Twenty Eight"
print("dictionary contains \(nameOfIntegers.count) elements")
print("Dictionary : ",nameOfIntegers)


nameOfIntegers = [:] //nameOfinteger is once again an empty dictionary of type [Int: String]
//use of [:] will empty the whole dictionary

print("dictionary contains \(nameOfIntegers.count) elements")
print("nameOfIntegers : ",nameOfIntegers)

if nameOfIntegers.isEmpty{
    print("dictionary is empty")
}
else{
    print(nameOfIntegers)
}

//declaring a dictionary of airport
var airports: [String: String] = ["YYZ": "Toronto Pearson","DUB": "Dublin","MUM": "Mumbai"]
print("Airports :",airports)
print("Airport dictionary contains \(airports.count) elements")

airports["LHR"] = "London Heathrow"  //it will add an value to the dictionary with key LHR and value London heatrow

airports["DEL"] = "Delhi"

print("Airports : ",airports)
print("Airport Dictionary conatins \(airports.count) elements")

//changing the value to the YYZ key
airports["YYZ"] = "International Toronto Pearson Airport"       //if the key already exist it will change the value else will insert as new key and value

print("Airports : ",airports)
print("Airport Dictionary conatins \(airports.count) elements")

//Alternative way to update/change the value of dicitonary
//here use of IF and ELSE is done coz without that it will generate an exception of STRING interpolation.
//if and else shuold be prefered for this kind of funcitons

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB")
{
print("The old value for DUB was \(oldValue).")
}
else {
    print("Not updated")
}
if let airportName = airports["Amd"]{
    print("The name of the airport is \(airportName).")
    
}else{
    print("That airport is not in the airport dictionary")
}

airports["Mars"] = "Range Rover"
print(airports)

airports["Mars"] = nil      //this will delete the record of mars key from dictionary
print("airports: ",airports)

//alternative to remove data form dictionary using remove function
if let removedValue = airports.removeValue(forKey: "DUB"){
    print("The removed aiports name is \(removedValue).")
}else{
    print("The aiports does not contain value for that key")
}

//using FOR loop
//below loop will give the keys in airportcode and values in aiportNames
for (airportCode, airportName) in airports{
    print(airportCode, airportName)
}
//Below for loop will only give a specified data from dicitonary, here only keys will be displayed as output which is airport code here
for (airportCode) in airports.keys{
    print("Airport Code : \(airportCode)")
}

//Below for loop will only give a specified data from dicitonary, here only values will be displayed as output which is airportname here
for (airportName) in airports.values{
    print("Airport Name: \(airportName)")
}

let airportCodes = [String](airports.keys)  //this will give only keys from the dictionary in a form of string
print("airportCodes : \(airportCodes)")

let airportNames = [String](airports.values)        //this will give only values from the dictionary in a form of string
print("airportNames : \(airportNames)")

//Alternative method to declare dictionary in KEY-VALUE pair
//decalring a dictioanry in another way

var d1 : Dictionary<String,String> = ["India":"Hindi","Canada":"English"]
print(d1)
print(d1.description)       //another way to display the data od dictionary
print(d1["India"]!)     //use of ! is coz it will not take the value as an optinal datatype it will take as it is without any change
print(d1["USA"])
for(k,v) in d1{
    print("\(k) -> \(v)")
}

var d2 = ["India":"Hindi","Canada":"English"]
for (k,v) in d2{
    print("\(k) -> \(v)")
}


//Dicitionary with any values
var d3 = [String: AnyObject]()
d3["firstName"] = "SS" as AnyObject     //typcast can be done using "as"
d3["lastName"]  = "Solanki" as AnyObject
d3["Age"] = Int(22) as AnyObject
d3["Salary"] = nil
print("d3",d3)

//Getting as a key,value pair
for(k,v) in d3{
    print("\(k) -> \(v)")
}




////////////////////////////TUPLES///////////////////////////////////

//DECLARING A TUPLE

var x = (10,20,"Solanki")
print(x.0)
print(x.1)
print(x.2)

let http404Error = (404,"Not Found")
print(http404Error)

let (code,message) = http404Error
print("Code: ",code)
print("Message: ",message)

let (codeOnly, _) = http404Error    //if the second field is not necessary it can be ignored using underscore "_" for single element
print("Codeonly: ",codeOnly)

let errorDescription = (Code: 404, Message: "Not Found")
print(errorDescription.Code,errorDescription.Message)











