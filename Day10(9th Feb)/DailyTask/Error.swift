//
//  Error.swift
//  DailyTask
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


enum trafficTicket: Error {
    case speeding
    case redLightBroke
    case seatBelt
    case invalidLicense
    
}

struct trafficFine {
    var type:String
    var speed: Double
    var driversLicenseIssued: Int
    var passengerPresent: Bool
    var fine: Double
}
