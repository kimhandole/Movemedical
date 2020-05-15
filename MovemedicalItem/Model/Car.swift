//
//  Car.swift
//  MovemedicalItem
//
//  Created by Han Kim on 5/15/20.
//  Copyright © 2020 Han Kim. All rights reserved.
//

class Car: Item {
    var color: String
    var year: Int
    var brand: String
    
    init(name: String, description: String, price: Double, color: String, year: Int, brand: String) {
        self.color = color
        self.year = year
        self.brand = brand
        super.init(name: name, description: description, price: price)
    }
}
