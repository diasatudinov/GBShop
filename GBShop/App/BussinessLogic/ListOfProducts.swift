//
//  ListOfProducts.swift
//  GBShop
//
//  Created by Atudinov Dias on 29.04.2023.
//

import Foundation


class ListOfProducts {
    
    var products:[Product]
    init(products: [Product]) {
        self.products = products
    }
    
    func getProducts(){
        for i in 0..<products.count {
            print(products[i])
        }
    }
    
    
}
