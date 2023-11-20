//
//  ProductItemView.swift
//  OnlineShop
//
//  Created by Stratos Lik on 18/11/23.
//

import SwiftUI

struct ProductItemView: View {
  let item : ProductItem
  
  var body: some View {
    HStack(spacing: 20) {
      Image(item.imageName)
        .resizable()
        .frame(width: 100, height: 100)
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
      VStack(alignment: .leading, spacing: 8) {
        Text(item.title)
          .font(.headline)
        HStack {
          RatingStarsView(viewModel: RatingStarsViewModel(rating: item.rating))
          Text(item.rating, format: .number)
            .font(.footnote)
            .foregroundStyle(Color.gray)
            .padding(.leading, 10)
        }
        Text("Book")
          .font(.subheadline)
          .foregroundStyle(.gray)
          .padding([.leading, .trailing], 12)
          .padding([.top, .bottom], 4)
          .background(
            Capsule()
              .stroke(Color.gray)
              .foregroundColor(.white)
          )
      }
      Spacer()
    }
    .padding([.leading, .trailing], 20)
  }
}

#Preview {
  let item = ProductItem(imageName: "food_2", title: "Thai chicken", rating: 3.5)
  return ProductItemView(item: item)
}

