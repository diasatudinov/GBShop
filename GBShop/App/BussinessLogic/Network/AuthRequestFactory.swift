//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by Atudinov Dias on 29.05.2023.
//

import Foundation


protocol AuthRequestFactory {
    func login(userName: String, password: String)
}
