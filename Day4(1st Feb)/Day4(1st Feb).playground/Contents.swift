//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//////////////////CLOSURES///////////////

print("=======ClOSURES======")


//sorted closure

var months = [4,3,1,6,5,2]
print(months.sorted())

//Modfying the above closure using function
func reverse(_ s1: Int, _ s2: Int) -> Bool {
    return s1 > s2
}

var reversedMonths = months.sorted(by: reverse)
print("reversedMonths",reversedMonths)

func increasing (_ s1: Int, _ s2: Int) -> Bool{
    return s1 < s2
}

var increasingMonths = months.sorted(by: increasing)
print("increasingMonths",increasingMonths)


//closure expression syntax

/*
 
 { (parameters) -> return type in
    statements
 }
 */

//Parameter clousre

var reverseClosure = months.sorted(by:{
    (s1: Int, s2: Int) -> Bool in
    return s1 > s2
})
print("reverseClosure",reverseClosure)


//inferring parameter types from context

var inferTypes = months.sorted(by: {
    
    (s1, s2) in s1 < s2     //implict return
})
print("inferTypes : ",inferTypes)

//shorthand argument names
print("shorthand argument : ",months.sorted(by: {$0 < $1}))


//operator methods
print("operators methods : ",months.sorted(by: <))

//divisble only by 3
var three = [1,3,5,6,8,9,12,15]
print("three : ",three)

var modThree = three.filter({ $0 % 3 == 0})
print("modthree : ",modThree)

//even number
var even = [1,2,3,4,5,6,7,8,9]
print("even",even)

var evenNum = even.filter({ $0 % 2 == 0})
print("EvenNumber are : ",evenNum)


//nested functions closure

func makeIncremnet(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncremnet(forIncrement: 10)

print("First call : ",incrementByTen()) //10
print("Second call : ",incrementByTen())    //20
print("Third call : ",incrementByTen())     //30


let incrementBySeven = makeIncremnet(forIncrement: 7)

print("Increment by seven 1 : ",incrementBySeven())     //7
print("Increment by seven 2 : ",incrementBySeven())     //14

print("fourth call : ",incrementByTen())        //40


//Closure are reference type

let incrementSevenAgain = incrementBySeven
print("Increment by seven 3 : ",incrementBySeven())     //21


//AutoClosures
var errorList = [404,414,402,431,455,440]
print("Total Errors : ",errorList.count)


let debugger = {errorList.remove(at: 0)}
print("Total Errors : ",errorList.count)    //as debugger is a constant it will not delete the element untill its cal next time

print("Now solving \(debugger())!")     // as the constant hase been called it will delete the previous element or will do to action took before
print("Total Errors : ",errorList.count)
print("Error List: ",errorList)


/*
 same behavior of delayed evalution
 */

func solve(error debugger: @autoclosure () -> Int) {
    print("Now solving \(debugger())!")
}

solve (error: errorList.remove(at: 0))
print("Error List : ", errorList)


/*
 read about escaping closures & trailing closuers
and try them
 */
