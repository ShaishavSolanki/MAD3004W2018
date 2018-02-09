//
//  RequestLimitIncrease.swift
//  Day10(9th Feb)
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class RequestLimitIncrease{
    var requsetsReceived = [
        "S1100" : requestFromAccount(type: "Saving", balance: 1234.09, reqStatus: "In Process"),
        "S1200" : requestFromAccount(type: "Saving", balance: 5050.09, reqStatus: "In Process"),
        "S1300" : requestFromAccount(type: "Chequing", balance: 1000.09, reqStatus: "In Process"),
        "S1400" : requestFromAccount(type: "Saving", balance: 5400, reqStatus: "Approved")
    ]
    
    func increaseLimit(accountNo acno: String) throws  {
    
        guard let reqAcc = requsetsReceived[acno] else{
            throw limitIncreaseError.ineligible
        }
        
        guard reqAcc.type == "Saving" else {
            throw limitIncreaseError.noSavingAccount
        } 
        
        guard reqAcc.balance >= 5000 else {
            throw limitIncreaseError.insuffucientBalance(balanceNeeded: 5000-reqAcc.balance)
        }
        
        guard reqAcc.reqStatus == "Approved" else{
            throw limitIncreaseError.status
        }
        
        var approvedRequest = reqAcc
        approvedRequest.reqStatus = "Approved"
        print("Your request is approved")

    }

    


}
