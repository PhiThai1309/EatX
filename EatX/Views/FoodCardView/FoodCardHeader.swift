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
