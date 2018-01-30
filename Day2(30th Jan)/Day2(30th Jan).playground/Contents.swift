//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str)

//Print multiple lines in string using """ before and after string

let strOne = """
This is first line
This is another line
This is one more line
Ok.Enough of lines
"""

print(strOne)

var mood = ""
let heart = "\u{1F61D}"    //   \u+{uni code values} use to print some of special character using uni code enter uni code in curly braces
mood = "happy"
if mood.isEmpty   //checking the string is empty oor not
{
    print("Cheer up")
}
else{
    print(heart)
}

mood += "Happy Day"
print(mood)

// heart += "Feeling Gud"

// above code will not be apble to execute copz heart is declared as constant using let keyword

var firstName = String()
firstName = "Shaishav"
print(firstName)

for i in firstName   //this loop will print all the characters present in the firstName as a single element
{
    print(i)
}

let initial : Character = "N"
firstName.append(initial)   // .append is use to join the string, Here it is joining firstname and initial

print(firstName)

print("FirstName is : \(firstName) which is \(firstName.count) characters long.")    // String name can be count using .count like stringname.count

print("start Index: ",firstName[firstName.startIndex])      //.startIndex is used to get the first letter of the string
//print("end Index: ",firstName[firstName.endIndex])  this code indicates NULL VALUE and return end of the string
print("before end Index: ", firstName[firstName.index(before: firstName.endIndex)])          //
print("after start Index: ", firstName[firstName.index(after: firstName.startIndex)])       //
print("5th character: ", firstName[firstName.index(firstName.startIndex,offsetBy: 4)])      //
print("3rd character from last: ", firstName[firstName.index(firstName.endIndex,offsetBy: -3)])     //

print("6th character rom last: ",firstName[firstName.index(firstName.endIndex,offsetBy: -6)])
var idx = firstName.index(firstName.startIndex,offsetBy: 3)
print("fourth Character: ",firstName[idx])




    


var language = "Swift"
print("language : ",language)

language.insert("!",at : language.endIndex)     //.insert is used to insert a string into a string at any index
print("lanaguage : ",language)

language.insert(contentsOf: "Java", at: language.endIndex)      // inserting using contentsof in which content which hase to be insert has to be written in contentsof and index should be setted in at:
print("languagae : ",language)

language.insert(contentsOf: " is nice than", at: language.index(language.startIndex,offsetBy: 6))       //inserting the string inbetween at specified index using .index
print("language contentsOf: ",language)

language.remove(at: language.index(before: language.endIndex))      //removing the last letter of the string
print("language remove : ",language)

let range = language.startIndex..<language.endIndex     //selecting the range of string from start to end
language.removeSubrange(range)                      //.removeSubrange is used to remove the entire string
print("language removesubrange : ",language)        // remove the whole string

let greeting = "Happy Holidays"
let index = greeting.index(of: " ") ?? greeting.endIndex    //will execute the statement till the space, it will be terminated after space output will be displayed which is  before space
let start = greeting[..<index]
let newGreet = String(start)

print("substring : ",newGreet)
print("String in upercase : ",newGreet.uppercased())        //to change the case of string

if (newGreet == newGreet.uppercased())  // to compare string's case
{
    print("Equal")
}
else{
    print("Not Equal")
}

var grade : String?
grade = "A"
let finalGrade = grade ?? "F"

if finalGrade.isEmpty {
    
    print("Not Graded yet")
    
}
else{
    print("Grade : ",finalGrade)
}

/////TRYING CLASS ACTIVITY///

/*
 var countstring = "Shaishav"
 var lenghtofstring = countstring.count
 
 for i in countstring{
 print("Letter of the String: ",i)
 }
 var reversestring = "Shaishav"
 var countreverse = reversestring.count
 for reversestring in stride(from: reversestring.index(after: reversestring,offsetBy: -1), to: 0, by: -1){
 print("String:",reversestring)
 }
 
 */




