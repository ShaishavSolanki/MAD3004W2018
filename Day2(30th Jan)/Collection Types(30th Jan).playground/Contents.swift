//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//DECLARATION OF ARRAY///

var a = [10,20,30,40,50]     //declaring array with name a and values in square braces[]
print("a[0] : \(a[0])")     //printing a particular index of array
print("a: ",a)              //printing whole array

//USE METHOD TO ADD VALUES///
var b = [Int]();
print("Size of array b : \(b.count)")   //counting the elements of array using .count
b.append(100)               //adding values to an array using .append
print("b[0] : \(b[0])")


//INDEX OUT OF BOUND////
/*b[2] = 500
print("b: ",b)
print("Size of array b : \(b.count)")
*/

//ASSIGING THE DEFAULT VALUE///
//Repeating is used to repeat a specific value
var num1 = [Int](repeating: 1,count: 3)         //decalring an array with INT datatype and default value with some operations in it
print("num1 array : \(num1)")
var num2 = [Int](repeating: 5,count: 3)         //same declaration as above
print("num2 array : \(num2)")
var numMerge = num1 + num2                      //adding two arrays using plus(+) opreator
print("numMerge array : \(numMerge)")

//DECLARING AN ARRAY WITH "ANY" DATATYPE WHICH CAN STORE ANY DATATYPE VALUES
var c = [Any]()           //Any values of different datatype can be stored
print("Size of array c: \(c.count)")
c.append(100)           //Adding a INT in array C
c.append("Solanki")     //Adding a String in array C
c.append(100.22)        //Adding a Float in array C
print("C array : ",c)

//COPYING ELEMENTS OF DECLARED ELEMENTS IN OTHER ARRAY
var x = a[1...3]    //variable a declared above with some elements
for t in x {
    print("x : \(t)")
}


//STIRNG ARRAY AND for-each with (KEY,VALUE)
var shoppinglist: [String] = ["Eggs","Milk"]
for (index,value) in shoppinglist.enumerated() //enumeration stores the values in the form of serial number with their values here index is serial number and values will store the values.
{
    print("Item \(index): \(value)")
    
}

print("The shopping list contains \(shoppinglist.count) items.")

if shoppinglist.isEmpty {
    print("The shopping list is empty.")
}
else{
    print("The shopping list is not empty")
}
shoppinglist.append("Flour")
print("shoppinglist array :\(shoppinglist)")

shoppinglist += ["Choclate","Cheese","Bread"]
print("shoppinglist array :\(shoppinglist)")
//shoppinglist[4...6] = ["Bananas","Apples"]
shoppinglist.insert("Maple Syrup",at: 0)    //it insert the element at the index 0
let maplesyrup = shoppinglist.remove(at: 2) //remove the third element of the array
let apples = shoppinglist.removeLast()      //remove last element of the array
print("shoppinglist array :\(shoppinglist) ")


//////////SET////////////////////////////

//DECLARING A SET IN SWIFT//

var grades : Set<Character> = []      //declaring a set with a SET keyword and its datatype inside <>
grades.insert("A")
grades.insert("B")
print("Grades : \(grades)")
print("Grades no of elements",grades.count)

//requires a hashable values or it does not contain duplicate values thats why datatype cant be ANY
//var gradeType:Set<Any> = []

var favoriteGenres: Set<String> = ["Rock","Classical","Hip hop"]
print("favoriteGenres : \(favoriteGenres)")

print("I have \(favoriteGenres.count) favorite music genres.")
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
}
else{
    print("I have particular music preferences.")
}
favoriteGenres.insert("Jazz")
print("FavoriteGenres : \(favoriteGenres)")

if let removeGenre = favoriteGenres.remove("Rock"){
    print("\(removeGenre)? I'm over it.")
}else{
    print("I never much cared for that.")
}
print("favoriteGenres : \(favoriteGenres)")
for genre in favoriteGenres.sorted()        //.sorted will sort the values in ascending order
{
    print("\(genre)")
}

///FUNCTION OF SET//
let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]

print(oddDigits.union(evenDigits).sorted())
print(oddDigits.intersection(evenDigits).sorted())
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

let houseAnimals: Set = ["🐶","🐱"]
let farmAnimals: Set = ["🐄","🐂","🐶","🐱"]
let cityAnimals: Set = ["🐵","🐝"]

print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))

