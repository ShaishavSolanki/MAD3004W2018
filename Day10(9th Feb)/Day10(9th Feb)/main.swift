//
//  main.swift
//  Day10(9th Feb)
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

//throw limitIncreaseError.ineligible


//var obj = RequestLimitIncrease()
//try obj.increaseLimit(accountNo: "S1100")



var processRequest = RequestLimitIncrease()

//for handling indiviual error

do {
    try processRequest.increaseLimit(accountNo:  "S1400")
}catch limitIncreaseError.insuffucientBalance {
    print("You dont have sufficient balance.")
}catch limitIncreaseError.ineligible {
    print("You dont have account with us.")
}catch limitIncreaseError.noSavingAccount {
    print("Limit increase is only available to saving account.")
}catch limitIncreaseError.status{
    print("Your Status is In Process")
}catch {
    print("Unexpected Error")
}


//for all of the above error as one

do{
    try processRequest.increaseLimit(accountNo: "S1100")
}catch is limitIncreaseError{
    print("Something wrong with your account")
}
