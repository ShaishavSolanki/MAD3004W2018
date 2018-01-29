//: Playground - noun: a place where people can play

import UIKit

var str = "Hello , playground";

print(str)

// \n  in print is used to print a variable indie the quotes
print("This is our string : \(str)")

//use terminator to replace the \n and user can set as there requirement for example space
print("This is our String: \(str)",terminator: " ")

//use separator for deparating multiple prompts
print("1","2","3","4","5",separator: "...")


//var is used to initialize the variable
var n1 = 10
print("Number 1 :",n1,"String:",str)

var n2 = 20
print("Number 2 :",n2)

var sum = n1 + n2
print("Sum is : ",sum)
print("Sum = ",n1+n2)

/*
 
 //Swift takes INTEGER as a data type if user daoes not declare it
n1 = "test"
print(n1)

*/

//declaring a specific datatype for Variable a
var a:Int =  10
print("a = ",a)

//Assinging String as a datatype to variable greet
var greet:String = "Good Morning"
print("Greetings : ",greet)

//Assinging Double as a datatype to variable b
var b:Double = 2.66
print("Value of b : ",b)

//Using Float as a datatype for variable c
var c:Float = 5.6
print("Value of c : ",c)

//It can also contain emojis
//Emojis can used as a String by WIN+CTRL+SPACE
//Emojis Should be in double quotes
var emoji = "😅"
print("Its an Emoji \(emoji)")


//DECLARING A FUNCTION CAN BE DONE USING "LET" KEYWORD
let pi = 3.14
//Let also works like a constant if a value for a variable id defined then it will be a constant
//pi = 3.190
print("PI = ",pi)

let myNum:Int?   //optional
myNum = 10


if myNum != nil{
    print("MyNum is : ",myNum)
}
else{
    print("MyNum is Nil")
}

if myNum != nil{
    print("MyNum is : ",myNum!)    // use ! is done to unpack the value or defining a datatype using !
}
else{
    print("MyNum is Nil")
}

let a1 = "abc"
print("String a1 is : ",a1) //here a1 is String
let converta1:Int?

converta1 = Int(a1)     //Typecasting a1 into Integer  or chaining  Datatype of a1 from string to integer

if converta1 != nil{
    print("Converted a1 = ",converta1!)
}
else{
    print("Converted a1 is Nil")
}

//If String will have alphabets then it will not be typecasted(change the datatype to integer)
//If String will contain number then only it will be converted into string to integer


// Using For Loop
//i from 1...5 is range
for i in 1...5{
    print("i = ",i)
}

//Printing i1 from 1 to less than 5
for i1 in 1..<5{
    print("i1 = ",i1)
}

/*
for i2 in 1..<=5{
    print("i3 = ",i3)
}
*/

let languages:[String]      //Declaring an array languages
languages = ["English","Spanish","French"]      // Defining values of an Array Language


for i in languages{
    print("language : ",i)
}

let number:[Int]
number = [1,2,3]
var sum1 = 0
for i in number{
    
    sum1 = sum1 + i
    
}
print("Total is : ",sum1)


var answer: Int = 1

for _ in 1...5{
    answer *= 5;
}
print("answer = ",answer)

//stride is used in for loop to define a specific range using FROM and TO also with BY to set an interval
var Interval:Int = 5
for i in stride(from: 0, to: 50, by :Interval)  //Here range is form 0 to 50 with interval of 5 which is declared as an integer above with interval keyword
{
    print(i," ",terminator: " ")
}

// Using While Loop

var j = 1

while (j < 5){

    print("\nValue of j is \(j)")
    j = j + 1
}


// Using Repeat While loop
j = 5
repeat{
    print("Reapeat : ",j)
    j = j + 2
}while (j<=10)


//Switch case

 var num4 = 100

switch num4{
case 100 :
    print("Value of num1 is 100")
    fallthrough     // allows user to print the next statemnet of the case
case 10,15 :
    print("Value of num4 is either 10 or 15")
case 5:
    print("Value of num4 is 5")
default :
    print("default case")
}



//Using range in switch case
let approximateCount = 1
let countedThings = "moons orbiting Saturn"
let naturalCount:String
switch approximateCount {
case 0 :
    naturalCount = "a few"
case 1..<5 :
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 10..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
    
}

print("There are \(naturalCount) \(countedThings)")
//Number to print Factorial of 5 and table of 5

var temp:Int = 5;
var ans:Int = 1;

if (temp<5) {
    for i in 1...temp{
        ans = ans * i
    }
    print("Factorial of 5 is :",ans)
}
else{
//var five:Int = 5
var multiple = 1
for i in 1...12{
    multiple = i * 5
    print("5 * \(i) = ",multiple)
}
}
