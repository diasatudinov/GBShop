//
//  ProductListUIView.swift
//  GBShop
//
//  Created by Atudinov Dias on 18.06.2023.
//

import SwiftUI

struct ProductListUIView: View {
    let category: Category
    @EnvironmentObject private var storeModel: StoreModel
    var body: some View {
        List(storeModel.products, id: \.id) { product in
            VStack{
                ScrollView(.horizontal){
                HStack{
                    AsyncImage(url: product.images?.first) { image in
                            image.resizable()
                                .frame(maxWidth: 275, maxHeight: 275)
                                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                        } placeholder: {
                            ProgressView()
                        }
                        AsyncImage(url: product.images?[1]) { image in
                            image.resizable()
                                .frame(maxWidth: 275, maxHeight: 275)
                                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                        } placeholder: {
                            ProgressView()
                        }
                    AsyncImage(url: product.images?.last) { image in
                            image.resizable()
                                .frame(maxWidth: 275, maxHeight: 275)
                                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    
                }
                HStack{
                    Text(product.title)
                        .font(.title2)
                    Spacer()
                    Text(product.price, format: .currency(code: "USD"))
                        .font(.title2)
                }
                Text(product.description)
                    .font(.title3)
                    .padding(5)
                    .foregroundStyle(.gray)
                
            }
            
        }.navigationTitle("\(category.name)")
            .task {
                do {
                    try await storeModel.fetchProductsByCategory(category.id)
                } catch {
                    print(error)
            }
        }
    }
}

struct ProductListUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListUIView(category: Category(id: 1, name: "Clothes", image: URL(string: "https://picsum.photos/640/640?r=3513")!)).environmentObject(StoreModel())
    }
}
