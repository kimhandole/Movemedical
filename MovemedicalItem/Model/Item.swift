//
//  Item.swift
//  MovemedicalItem
//
//  Created by Han Kim on 5/15/20.
//  Copyright © 2020 Han Kim. All rights reserved.
//

class Item {
    var name: String
    var description: String
    var price: Double
    
    var taxRate = 0.095
    
    init(name: String, description: String, price: Double) {
        self.name = name
        self.description = description
        self.price = price
    }
    
    func getPrice() -> Double {
        return self.price
    }
    
    func getPriceString() -> String {
        return "$\(String(format: "%.2f", price))"
    }
}
