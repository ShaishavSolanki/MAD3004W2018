//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

///////////////////////////////FUNCITONS///////////////////////////
print("=========FUNCTIONS=======")
//WORKING WITH FUNCTIONS

//Simple function declaration

func add()
{
    print("I am in User Defined Function")
}

//Calling a Function
add()


func add(n1:Int, n2:Int){
    var sum : Int
        sum = n1 + n2
    print("sum : ",sum)
}
add(n1:5,n2:5)  //calling a function
//add(5,5)    //error use of label is must here they are n1,n2
//add(n2:10, n1:20)   //error sequence must be as declared


//Making parameter label optional using _
func sub(a: Int, _ b : Int)
{
    let c = a-b
    print("sub : \(c)")
}
sub(a: 5,2)


//Single return type
func mul(a: Int, b: Int) -> (Int){
    let d = a*b
    print("Mul: \(d)")
    return(d)
}


//Multi return

func swipe(number1 a: Int, b: Int) -> (Int, Int)
{
    //function parameter are constants by defaults
    //var temp = a
    // a = b
    // b = temp
    return(a,b)
}


var (a,b) = swipe(number1: 10, b: 20)
print("a: \(a), b: \(b)")
var (_,c) = swipe(number1: 10, b: 20)
print("c : \(c)")


//inout concept
func swipe(aa: inout Double, bb: inout Double)
{
    let temp = aa
    aa = bb
    bb = temp
}

var x = 8.0, y = 9.0
swipe(aa:&x , bb:&y  )
//swipe(aa:& 10 , bb:& 12)  //error
print("x : \(x), y: \(y)")

//Default parameter
func simpleInterest(amount:Double, noOfYears: Double, rate: Double = 5.0) -> Double
{
    let si = amount * rate * noOfYears / 100
    return si
}


print("simple interest: \(simpleInterest(amount: 1000, noOfYears: 5))")
print("simple interest : \(simpleInterest(amount: 1000, noOfYears: 5, rate: 10))")

//Variadic Parameters
func display(n:Int...)
{
    for i in n{
        print(i)
    }
}

display(n: 1,2,3,4,5)
display(n: 10,20,30,40)

//passing array as parameter
func display(numberValues: Int, parameters:[Int]...)
{
    print("Number of vaues \(numberValues)")
    for i in parameters{
        print("i: \(i)")
    }
}

var arr = [1,2,3,4,5]
display(numberValues:3, parameters:arr,arr,arr)


//sum of array
func display(arrayList:[Int]...) -> [Int]
{
    var array1 = arrayList[0]
    var array2 = arrayList[1]
    var result = [Int]()
    
    if array1.count == array2.count
    {
        for i in 0..<array1.count
        {
            result.append(array1[i] + array2[i])
        }
    }
    return result
}

var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14]
var a3 = display(arrayList: a1,a2)

print(a1)
print(a2)
print(a3)

