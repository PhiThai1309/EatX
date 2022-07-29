/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Thai Manh Phi
 ID: s3878070
 Created  date: 19/07/2022
 Last modified: 29/07/2022
 Acknowledgement:
 */

import Foundation
import SwiftUI

var MealType = ["All", "Breakfast", "Dessert", "Mains", "Drinks"]

struct MealIcon: View {
    var meal: String
    
    var body: some View {
        switch meal {
        case MealType[1]:
            Text("🍳")
        case MealType[2]:
            Text("🍰")
        case MealType[3]:
            Text("🍲")
        case MealType[4]:
            Text("🍹")
        default:
            Image(systemName: "fork.knife")
        }
    }
}
