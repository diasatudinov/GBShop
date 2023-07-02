//
//  ProductModel.swift
//  GBShop
//
//  Created by Atudinov Dias on 18.06.2023.
//

import Foundation

struct Product: Codable{
    var id: Int?
    let title: String
    let price: Double
    let description: String
    let images: [URL]?
    let category: Category
}
