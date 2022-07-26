//
//  ListView.swift
//  EatX
//
//  Created by Phi Thai on 26/07/2022.
//

import Foundation
import SwiftUI

struct ListView: View {
    var foods: [Food]
    
    var body: some View {
        VStack {
            List(foods) {
                food in
                NavigationLink(destination: FoodCard(food: food)) {
                    Label {
                        Text(food.name)
                    } icon:  {
                        Image(food.thumbnailImage)
                            .clipShape(Circle())
                    }
                }
            }
        }
    }
}
