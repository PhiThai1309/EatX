//
//  MealIcon.swift
//  EatX
//
//  Created by Phi Thai on 19/07/2022.
//

import Foundation
import SwiftUI

struct MealIcon: View {
    var meal: String
    
    var body: some View {
        if(meal.lowercased() == "breakfast") {
            Image(systemName: "sun.haze")
        } else if(meal.lowercased() == "dessert") {
            Image(systemName: "fork.knife")
        }
        
    }
}
