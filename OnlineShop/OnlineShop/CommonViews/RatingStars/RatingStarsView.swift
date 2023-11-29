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
      
      ForEach(viewModel.getStarImages(rating: viewModel.rating), id: \.self) { image in
        Image(systemName: image)
          .resizable()
          .frame(width: 12, height: 12)
          .foregroundStyle(Color.gray)
      }
    }
  }
}

#Preview {
  let viewModel = RatingStarsViewModel(rating: 3.2)
  return RatingStarsView(viewModel: viewModel)
}
