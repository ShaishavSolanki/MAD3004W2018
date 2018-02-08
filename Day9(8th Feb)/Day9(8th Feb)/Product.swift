//
//  Product.swift
//  Day9(8th Feb)
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class Product {
    let name: String
    
    //init? is a failable initializer
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
            
        }
}
