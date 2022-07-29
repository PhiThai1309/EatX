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
