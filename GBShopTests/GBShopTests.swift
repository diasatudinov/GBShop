//
//  GBShopTests.swift
//  GBShopTests
//
//  Created by Atudinov Dias on 20.04.2023.
//

import XCTest
@testable import GBShop

final class GBShopTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_SignIn(){
        var email = "login"
        var password = "password"
        
        let signIn = SignIn(email: email, password: password)
        let result = signIn.signIn(email: email, password: password)
        
        XCTAssertEqual(result, true)
    }
    
    func test_SignUp(){
        let name = "Dias"
        let surname = "Atudinov"
        let age = 24
        let email = "dias.atudinov@gmail.com"
        let password = "password"
        
        let signUP = SignUp(name: name, surname: surname, age: age, email: email, password: password)
        
        let result = signUP.signUp(name: name, surname: surname, age: age, email: email, password: password)
        
        XCTAssertEqual(result, true)
    }
    
    func test_LogOut(){
        let signedIn = true
        
        let logOut = LogOut(signedIn: signedIn)
        let result = logOut.exitAccount(signedIn: signedIn)
        
        XCTAssertEqual(result, false)
    }
   

}
