//
//  RatingStarsViewModel.swift
//  OnlineShop
//
//  Created by Stratos Lik on 20/11/23.
//

import SwiftUI

struct RatingStarsViewModel {
  /// The corresponding rating of the stars
  var rating: Double
  
  /// This function returns an array of 5 images of stars based on viewModel's rating.
  /// Each index in the array has a star. There are three types of a star `star`, `star.fill`, `star.leadinghalf.filled`
  /// - Returns: An array with stars that represents the rating
  func getStarImages(rating: Double) -> [String] {
    
    let starEmptyImage = "star"
    let starFillImage = "star.fill"
    let starHalfImage = "star.leadinghalf.filled"
    var starsArray: [String] = []
    
    if rating == 0 {
      for _ in 0...4 {
        starsArray.append(starEmptyImage)
      }
    } else if (rating >= 0 && rating <= 5) {
      for _ in 0...Int(rating - 1) {
        starsArray.append(starFillImage)
      }
      if rating.remainder(dividingBy: 1) != 0 {
        starsArray.append(starHalfImage)
      }
    } else {
      print("Error in range of rating!")
    }
    for _ in starsArray.count..<5 {
      starsArray.append(starEmptyImage)
    }
    return starsArray
  }
}
