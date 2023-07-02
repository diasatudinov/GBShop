//
//  TabViewUIView.swift
//  GBShop
//
//  Created by Atudinov Dias on 18.06.2023.
//

import SwiftUI

struct TabViewUIView: View {
    @EnvironmentObject private var storeModel: StoreModel
    var body: some View {
        TabView {
            CategoryListScreenUIView()
                .tabItem {
                    Label("Store", systemImage: "bag")
                }
            
            Text("ssssssssss")
                .tabItem {
                    Label("Basket", systemImage: "basket")
                }
        }
    }
}

struct TabViewUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewUIView().environmentObject(StoreModel())
    }
}
