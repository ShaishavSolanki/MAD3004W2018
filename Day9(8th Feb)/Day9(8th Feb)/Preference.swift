//
//  Preference.swift
//  Day9(8th Feb)
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Preference: Vehicle {
    var prefer = false
    var description: String {
        var output = "Do you prefer \(noOfWheels) wheel vwhicles from \(name) ?"
        output += prefer ? "✔️" : "✖️"
        return output
    }
}
