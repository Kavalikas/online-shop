//
//  RatingStarsViewModel.swift
//  OnlineShop
//
//  Created by Stratos Lik on 20/11/23.
//

import UIKit

struct RatingStarsViewModel {
  /// The corresponding rating of the stars
  let rating: Double
  
  /// This function returns an array of 5 images of stars based on viewModel's rating.
  /// Each index in the array has a star. There are three types of a star `fill_star`, `empty_star`, `half_filled_star`
  /// - Returns: An array with stars that represents the rating
  func getStarImages() -> [UIImage] {
    // TODO: Impletent the logic that will construct the corresponding stars
    return []
  }
}
