//
//  SignUp.swift
//  GBShop
//
//  Created by Atudinov Dias on 29.04.2023.
//

import Foundation

protocol SignUpProtocol{
    var name: String { get }
    var surname: String { get }
    var age: Int { get }
    var email: String { get }
    var password: String { get }
    
    func signUp(name: String, surname: String, age: Int, email: String, password: String)->Bool
}

class SignUp: SignUpProtocol {
    var name: String
    var surname: String
    var age: Int
    var email: String
    var password: String
    
    init(name: String, surname: String, age: Int, email: String, password: String) {
        self.name = name
        self.surname = surname
        self.age = age
        self.email = email
        self.password = password
    }
    
    func signUp(name: String, surname: String, age: Int, email: String, password: String)->Bool {
        if !name.isEmpty && !surname.isEmpty && 0 < age && age < 150 && !email.isEmpty && !password.isEmpty {
            return true
        }
        return false
        
    }
}
