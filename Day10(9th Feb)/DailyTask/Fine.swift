//
//  Fine.swift
//  DailyTask
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Fine {
    var issueTicket = [
        "P11" : trafficFine(type: "speeding",speed: 50, driversLicenseIssued: 2, passengerPresent:false, fine: 200),
        "P12" : trafficFine(type: "redLightBroke", speed: 20, driversLicenseIssued: 2, passengerPresent: true, fine: 0),
        "P13" : trafficFine(type: "seatBelt", speed: 30, driversLicenseIssued: 5, passengerPresent: true, fine: 200),
        "P14" : trafficFine(type: "invalidLicense", speed: 20, driversLicenseIssued: 1, passengerPresent: false, fine: 0)
    ]
    
    func payTicket(ticketNo tkno: String) throws  {
        
        guard let tkissue = issueTicket[tkno] else{
            throw trafficTicket.invalidLicense
        }
        
        /*guard tkissue.type == "speeding" else {
            throw trafficTicket.speeding
        }*/
        
        guard tkissue.speed <= 50 else {
            throw trafficTicket.speeding
        }
        
        guard tkissue.type == "redLightBroke" else{
            throw trafficTicket.redLightBroke
        }
        
       // var approvedRequest = reqAcc
       // approvedRequest.reqStatus = "Approved"
      //  print("Your request is approved")

}

}
