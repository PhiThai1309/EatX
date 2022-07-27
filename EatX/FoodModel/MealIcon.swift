//
//  MealIcon.swift
//  EatX
//
//  Created by Phi Thai on 19/07/2022.
//

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
