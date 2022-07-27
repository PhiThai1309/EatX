//
//  FoodCard.swift
//  EatX
//
//  Created by Phi Thai on 19/07/2022.
//

import Foundation
import SwiftUI

struct FoodCard: View {
    var food: Food
    
    var body: some View {
        VStack() {
            FoodImage(food: food)
            ScrollView{
                VStack(alignment: .leading) {
                    FoodCardHeader(food: food)
                    FoodCardIntroduction(food: food)
                    FoodCardPrice(food: food)
                }
                .padding()
                Spacer()
            }
            //            ZStack {
            //                .position(x: .infinity, y: 200)
            //                    .frame(height: 100)
            //            }
            GeometryReader{
                geometry in
                Button{
                    //                cartItems.add(item: food)
                    //                print(cartItems.items[0])
                } label: {
                    Label("Add to cart", systemImage: "cart.badge.plus")
                }
                .frame(width: 250)
                .padding()
                .background(.green)
                .clipShape(Capsule())
                .foregroundColor(.white)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.4)
            }
            .frame(height: 100)
        }
        .ignoresSafeArea()
        .accentColor(.blue)
        
    }
}

struct FoodCard_Previews: PreviewProvider {
    static var previews: some View {
        FoodCard(food: foods[3])
            .previewDevice("iPhone 11")
    }
}
