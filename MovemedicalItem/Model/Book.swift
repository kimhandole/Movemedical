//
//  Book.swift
//  MovemedicalItem
//
//  Created by Han Kim on 5/15/20.
//  Copyright © 2020 Han Kim. All rights reserved.
//

class Book: Item {
    var author: String
    var publisher: String
    
    init(name: String, description: String, price: Double, author: String, publisher: String) {
        self.author = author
        self.publisher = publisher
        
        super.init(name: name, description: description, price: price)
    }
}
