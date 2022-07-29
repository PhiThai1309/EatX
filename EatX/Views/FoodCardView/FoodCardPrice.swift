//
//  FoodCardPrice.swift
//  EatX
//
//  Created by Phi Thai on 26/07/2022.
//

import Foundation
import SwiftUI

struct FoodCardPrice: View {
    var food: Food
    
    var body: some View{
        Text(food.price, format: .currency(code: Locale.current.currencyCode ?? "USD"))
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.vertical)
    }
}
