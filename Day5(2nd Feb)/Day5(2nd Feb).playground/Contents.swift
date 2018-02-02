//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


////////classes/////
print("=====CLASSES=====")

class Employee{
    
    var empId: Int?
    var empName: String?
    var basicPay: Double?
    
    //Initializers or constructors
    //init is a keyword to initialize the default values
    //init without parameters
    init() {
        self.empId = 0
        self.empName = ""
        self.basicPay = 0.0
    }
    
    //init with parameters
    
    init(ID: Int, nm: String, pay: Double) {
        self.empId = ID
        self.empName = nm
        self.basicPay = pay
    }
    
    func display() {
        print("Employee ID : ",self.empId!)     //self is used to call current instance used to refer within the class
        print("Employee Name : ",self.empName!)
        print("Basic Pay : ",self.basicPay!)
        
    }
    
}



var emp1 = Employee()
emp1.empId = 101
emp1.empName = "Sunny"
emp1.basicPay = 5000.00
emp1.display()

//using the initializer withour parameter
var emp3 = Employee()
emp3.display()

//using the initializer with parameters
var emp4 = Employee(ID: 104, nm: "Navneet", pay: 2000.00)
emp4.display()


var demo = Employee(ID: 000, nm: "demo", pay: 1111.111)
demo.display()

var demo1 = Employee()
demo1.display()




///INHERITANCE///
print("===INHERITANCE===")

//Permanent Employee inherting Employee

class PermanentEmployee : Employee{
    var vacationWeeks : Int?
    
    //default initializer
    override init() //using overide coz the init method is already called in the base class and it have to be override
    {
        super.init()
        self.vacationWeeks = 0
    }
    
    //parametrized intializer of subclass
    init(eID: Int, eNM: String, ePay: Double, weeks: Int) {
        super.init(ID: eID, nm: eNM, pay: ePay) //invoking the parameters from the superclass that is Employee
        self.vacationWeeks = weeks
    }
    
    override func display() //override is a keyword which is used to override the function
    {
        super.display() //sper keyword is used to display the parameters of the super class/base class from which the permanentEmployee s inherited which is employee
        print("Vacation Weeks : ",self.vacationWeeks!)
    
    }
    
}

var obj2 = PermanentEmployee()
obj2.display()
obj2.empId = 102
obj2.empName = "Shaishav"
obj2.basicPay = 3000
obj2.vacationWeeks = 10
obj2.display()

var obj4 = PermanentEmployee(eID: 106, eNM: "Navjot", ePay: 1320.77, weeks: 0)
obj4.display()


//Multi-Level Inheritance
class Payroll : PermanentEmployee   //inheriting PermanentEmployee whcih is already a sub-class so it is called a Multi-Level Inheritance
{
    var finalPay : Double?{
        
        //get is a computed prperty which can be used to calculate the operations with calculations
        get{
            //below is called a computed property which is used to derive some operations for here it is calulating the total salary for employee on the basis of vacation weeks
            let vw = self.vacationWeeks!
            if vw > 5{
                return  self.basicPay! - 100
            }
            else{
                return self.basicPay!
        }
    }
}
    override init() {
        super.init()
       // self.finalPay = 0.0
    }
    
    
 override init(eID: Int, eNM: String, ePay: Double, weeks: Int) {
        super.init(eID: eID, eNM: eNM, ePay: ePay, weeks : weeks) //invoking the parameters from the superclass that is Employee
      // self.finalPay = 0.0
    }
    
  /*  func salary() {
        let vw = self.vacationWeeks!
        if vw > 5{
            self.finalPay! = self.basicPay! - 100
        }
        else{
            self.finalPay! = self.basicPay!
        }
    } */
    override func display() {
        
        super.display()
        //self.salary()
        print("Final Salary : ",self.finalPay!)
     }
    
    
}

var obj7 = Payroll(eID: 110, eNM: "ss", ePay: 5000.00, weeks: 6)
obj7.display()



//manipulate object array[]
var janPayroll = [Payroll]()
let noOfEmployess = 2

for i in 0..<noOfEmployess {
    janPayroll.append(Payroll(eID: 117, eNM: "JK", ePay: 5555.56, weeks: 7))
    janPayroll[i].display()
}



