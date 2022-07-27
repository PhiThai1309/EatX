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
    
    var body: some View{
        GeometryReader {
            geo in
            ScrollView(.horizontal){
                HStack{
                    Image(food.mainImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width ,height: 400, alignment: .center)
                        .clipped()
                    Image(food.secondImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width ,height: 400, alignment: .center)
                        .clipped()
                }
            }
        }
    }
}
