//
//  CategoryModel.swift
//  GBShop
//
//  Created by Atudinov Dias on 18.06.2023.
//

import Foundation

struct Category: Codable, Hashable{
    let id: Int
    let name: String
    let image: URL
}
