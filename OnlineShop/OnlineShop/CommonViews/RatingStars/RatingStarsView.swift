//
//  RatingStarsView.swift
//  OnlineShop
//
//  Created by Stratos Lik on 20/11/23.
//

import SwiftUI

struct RatingStarsView: View {
  let viewModel: RatingStarsViewModel
//  let starsArray = viewModel.getStarImages(rating: viewModel.rating)
  
  var body: some View {

    HStack {
      
      ForEach(Array(viewModel.getStarImages(rating: viewModel.rating).enumerated()), id: \.offset) { index, image in
        Image(systemName: image)
          .resizable()
          .frame(width: 12, height: 12)
          .foregroundStyle(Color.gray)
      }
    }
  }
}

#Preview {
  let viewModel = RatingStarsViewModel(rating: 3.5)
  return RatingStarsView(viewModel: viewModel)
}
