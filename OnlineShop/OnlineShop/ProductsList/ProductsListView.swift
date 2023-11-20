//
//  ProductsListView.swift
//  OnlineShop
//
//  Created by Stratos Lik on 18/11/23.
//

import SwiftUI

struct ProductsListView: View {
  // MARK: Private Properties
  
  // MARK: Public Properties
  let viewModel = ProductsListViewModel()
  
  var body: some View {
    ScrollView {
      VStack {
        ProductItemView(item: ProductItem(imageName: "food_1", title: "chicken", rating: 4.5))
        ProductItemView(item: ProductItem(imageName: "food_2", title: "thai chicken", rating: 3.5))
        ProductItemView(item: ProductItem(imageName: "food_3", title: "noodles", rating: 3))
        Spacer()
      }
    }
    .scrollBounceBehavior(.basedOnSize)
      // MARK: Private methods
      
    }
}

#Preview {
    ProductsListView()
  }

