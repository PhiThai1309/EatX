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
            Image(food.mainImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 400, alignment: .center)
            VStack(alignment: .leading) {
                Text(food.name)
                    .font(.largeTitle)
                    .fontWeight(.black)
                Spacer()
                Text(food.description)
                Text(food.price, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.vertical)
            }
            .padding()
            Spacer()
            
            
            ZStack {
                Button{
    //                cartItems.add(item: food)
    //                print(cartItems.items[0])
                } label: {
                    Label("Add to cart", systemImage: "cart.badge.plus")
                }.position(x: 100, y: 100).frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
        .ignoresSafeArea()
        
        
    
    }
}

struct FoodCard_Previews: PreviewProvider {
    static var previews: some View {
        FoodCard(food: foods[0])
    }
}
