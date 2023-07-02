//
//  LogOut.swift
//  GBShop
//
//  Created by Atudinov Dias on 29.04.2023.
//

import Foundation

protocol LogOutProtocol{
    var signedIn: Bool {get}
    
    func exitAccount(signedIn: Bool) -> Bool
}

class LogOut: LogOutProtocol{
    var signedIn: Bool
    
    init(signedIn: Bool){
        self.signedIn = signedIn
    }
    
    func exitAccount(signedIn: Bool) -> Bool {
        if signedIn == true {
            self.signedIn.toggle()
            return false
        }
        return false
    }
}
