//
//  ErrorHandling.swift
//  Day10(9th Feb)
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


enum limitIncreaseError: Error {
    case insuffucientBalance(balanceNeeded: Double)
    case noSavingAccount
    case ineligible
    case status
}

struct requestFromAccount {
    var type: String
    var balance: Double
    var reqStatus: String
    
}

