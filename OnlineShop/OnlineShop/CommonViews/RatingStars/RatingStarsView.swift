//
//  RatingStarsView.swift
//  OnlineShop
//
//  Created by Stratos Lik on 20/11/23.
//

import SwiftUI

struct RatingStarsView: View {
  let viewModel: RatingStarsViewModel
  
  var body: some View {
    HStack {
      Image(systemName: "star")
        .resizable()
        .frame(width: 12, height: 12)
        .foregroundStyle(Color.gray)
      Image(systemName: "star")
        .resizable()
        .frame(width: 12, height: 12)
        .foregroundStyle(Color.gray)
      Image(systemName: "star")
        .resizable()
        .frame(width: 12, height: 12)
        .foregroundStyle(Color.gray)
      Image(systemName: "star")
        .resizable()
        .frame(width: 12, height: 12)
        .foregroundStyle(Color.gray)
      Image(systemName: "star")
        .resizable()
        .frame(width: 12, height: 12)
        .foregroundStyle(Color.gray)
    }
  }
}

#Preview {
  let viewModel = RatingStarsViewModel(rating: 3)
  return RatingStarsView(viewModel: viewModel)
}
