//
//  FoodImage.swift
//  EatX
//
//  Created by Phi Thai on 26/07/2022.
//

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
