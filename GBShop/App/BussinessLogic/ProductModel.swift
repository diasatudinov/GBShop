//
//  ProductModel.swift
//  GBShop
//
//  Created by Atudinov Dias on 29.04.2023.
//

import Foundation

class Product {
    var name: String
    var count: Int
    var producer: String
    var price: Double
    var date: Date
    var color: String
    
    init(name: String, count: Int, producer: String, price: Double, date: Date, color: String) {
        self.name = name
        self.count = count
        self.producer = producer
        self.price = price
        self.date = date
        self.color = color
    }
    
}
