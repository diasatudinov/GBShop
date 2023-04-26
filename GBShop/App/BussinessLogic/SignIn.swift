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
    func signIn(email: String, password: String)
}

class SignIn: SignInProtocol {
    var email: String
    var password: String
    
    init(email: String,password: String){
        self.email = email
        self.password = password
    }
    
    func signIn(email: String, password: String) {
        
    }
}

protocol SignUpProtocol{
    var name: String { get }
    var surname: String { get }
    var age: Int { get }
    var email: String { get }
    var password: String { get }
    
    func signUp(name: String, surname: String, age: Int, email: String, password: String)
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
    
    func signUp(name: String, surname: String, age: Int, email: String, password: String) {
        
    }
}

class Exit{
    func exitAccount() {
        
    }
}


class ChangeData {
    func changeData(){
        
    }
}
