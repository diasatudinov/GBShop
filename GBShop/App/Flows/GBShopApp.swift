//
//  GBShopApp.swift
//  GBShop
//
//  Created by Atudinov Dias on 20.04.2023.
//

import SwiftUI

@main
struct GBShopApp: App {
    @StateObject private var storeModel = StoreModel()
    var body: some Scene {
        WindowGroup {
            TabViewUIView().environmentObject(storeModel)
        }
    }
}
