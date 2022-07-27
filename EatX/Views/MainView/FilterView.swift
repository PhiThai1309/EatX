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
    @Binding var orderList: [Food]
    @Binding var totalPrice: Float
    
    var body: some View {
        VStack {
            List(foods) {
                food in
                if(food.meal == filter){
                    NavigationLink(destination: FoodCard(food: food, orderList: $orderList, totalPrice: $totalPrice)) {
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
