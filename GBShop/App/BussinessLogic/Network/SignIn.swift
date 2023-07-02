//
//  SignIn.swift
//  GBShop
//
//  Created by Atudinov Dias on 22.04.2023.
//

import Foundation


protocol SignInProtocol{
    var email: String { get }
    var password: String { get }
    func signIn(email: String, password: String) -> Bool
}

class SignIn: SignInProtocol {
    var email: String
    var password: String
    
    init(email: String,password: String){
        self.email = email
        self.password = password
    }
    
    func signIn(email: String, password: String) -> Bool {
        if email.lowercased() == "Login".lowercased() && password.lowercased() == "Password".lowercased() {
            return true
        }
        return false
    }
}
