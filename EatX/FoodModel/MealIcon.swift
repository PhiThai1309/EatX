//
//  MealIcon.swift
//  EatX
//
//  Created by Phi Thai on 19/07/2022.
//

import Foundation
import SwiftUI

var MealType = ["All", "Breakfast", "Dessert"]

struct MealIcon: View {
    var meal: String
    
    var body: some View {
        switch meal {
        case MealType[1]:
            Text("🍳")
        case MealType[2]:
            Text("🍰")
        default:
            Image(systemName: "fork.knife")
        }
    }
}
