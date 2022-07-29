/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Thai Manh Phi
 ID: s3878070
 Created  date: 26/07/2022
 Last modified: 29/07/2022
 Acknowledgement:
 */

import Foundation
import SwiftUI

struct FoodImage: View{
    var food: Food
    var height: GeometryProxy
    
    var body: some View{
        GeometryReader {
            geo in
            ScrollView(.horizontal){
                HStack{
                    Image(food.mainImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width ,height: height.size.height * 0.5, alignment: .center)
                        .clipped()
                    Image(food.secondImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width ,height: height.size.height * 0.5, alignment: .center)
                        .clipped()
                }
            }
        }
        .frame(height: height.size.height * 0.5)
    }
}
