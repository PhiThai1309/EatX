//
//  ListView.swift
//  EatX
//
//  Created by Phi Thai on 26/07/2022.
//

import Foundation
import SwiftUI

struct FilterView: View {
    var foods: [Food]
    var filter: String
    
    var body: some View {
        VStack {
            List(foods) {
                food in
                if(food.meal == filter){
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
}
