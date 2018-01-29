//: Playground - noun: a place where people can play

import UIKit



var temp:Int = 5;
var ans:Int = 1;

if (temp<5) {
    for i in 1...5{
        ans = ans * i
    }
    print("Factorial of 5 is :",ans)
}
else{
    //var five:Int = 5
    var multiple = 1
    for i in 1...10{
        multiple = i * 5
        print("5 * \(i) = ",multiple)
    }
}
