/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Thai Manh Phi
 ID: s3878070
 Created  date: 26/07/2022
 Last modified: 1/08/2022
 Acknowledgement:
 */

import Foundation
import SwiftUI

struct ListView: View {
    var foods: [Food]
    @Binding var orderList: [Food]
    @Binding var totalPrice: Float
    
    //This view provide the full list
    var body: some View {
        //Loop through the list of food
        List(foods) {
            food in
            //Link the item to FoodCard
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
