//
//  FoodCardHeader.swift
//  EatX
//
//  Created by Phi Thai on 26/07/2022.
//

import Foundation
import SwiftUI

struct FoodCardHeader: View {
    var food: Food
    
    var body: some View{
        Text(food.name)
            .font(.largeTitle)
            .fontWeight(.heavy)
        HStack{
            MealIcon(meal: food.meal)
            Text(food.meal)
        }.padding(.top, 0.1)
        Spacer(minLength: 20)
    }
}
