import Cocoa
import SwiftUI


//var rating = 4.0
//if rating.remainder(dividingBy: 1) == 0 {
//  print(rating)
//  
//}
//let starEmptyImage = Image(systemName: "star")
//let starFillImage = Image(systemName: "star.fill")
//let starHalfImage = Image(systemName: "star.leadinghalf.filled")
//var starsArray: [Image] = []
//if Int(rating.remainder(dividingBy: 1)) == 0 {
//  for _ in 0...Int(rating) {
//    starsArray.append(starFillImage)
//    print(rating)
//  }
//}
//
//print(starsArray)
//
struct StarRatingView: View {
    var rating: Double

    var body: some View {
        HStack {
            ForEach(1..<6) { index in
                let starImage = self.starImage(for: index)
                starImage
                    .resizable()
                    .frame(width: 20, height: 20)
            }
        }
    }

    private func starImage(for index: Int) -> Image {
        let filledStars = min(max(0, rating), Double(index))
        let isHalf = rating.truncatingRemainder(dividingBy: 1) != 0 && filledStars == floor(rating)

        if filledStars >= Double(index) {
            return isHalf ? Image(systemName: "star.leadinghalf.fill") : Image(systemName: "star.fill")
        } else {
            return Image(systemName: "star")
        }
    }
}

struct ContentView: View {
    var body: some View {
        // Example usage with a rating of 3.5
        StarRatingView(rating: 3.5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
