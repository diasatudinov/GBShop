//
//  CategoryListScreenUIView.swift
//  GBShop
//
//  Created by Atudinov Dias on 18.06.2023.
//

import SwiftUI

struct CategoryListScreenUIView: View {
    @EnvironmentObject private var storeModel: StoreModel
    @State private var errorMessage = ""
    var body: some View {
        NavigationStack{
            HStack{
                List(storeModel.categories, id: \.id){ category in
                    NavigationLink(value: category) {
                        ZStack{
                            AsyncImage(url: category.image) { image in
                                image.resizable()
                                    .frame(maxWidth: 350, maxHeight: 350)
                                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                            } placeholder: {
                                ProgressView()
                            }
                            VStack{
                                Spacer()
                                Text(category.name)
                                    .font(.title3)
                                    .fontWeight(.black)
                                    .background(.gray).cornerRadius(5.0)
                                    .padding(20)
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                }.navigationDestination(for: Category.self, destination: { category in
                    ProductListUIView(category: category)
                })
                .task {
                    do{
                        try await storeModel.fetchCategories()
                    } catch {
                        errorMessage = error.localizedDescription
                    }
                }.listStyle(.inset)
                Text(errorMessage)
            }.navigationTitle("Store")
            
        }
    }
}

struct CategoryListScreenUIView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListScreenUIView().environmentObject(StoreModel())
    }
}
