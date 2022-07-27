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
            .font(.title)
            .fontWeight(.heavy)
        Spacer(minLength: 10)
        HStack{
            MealIcon(meal: food.meal)
            Text(food.meal)
        }.padding(.bottom, 10)
            .foregroundColor(Color.gray)
    }
}
