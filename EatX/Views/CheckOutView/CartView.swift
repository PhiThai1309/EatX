/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Thai Manh Phi
 ID: s3878070
 Created  date: 1/08/2022
 Last modified: 1/08/2022
 Acknowledgement:
 */

import Foundation
import SwiftUI

//This is a cart view if it is not empty
struct CartView: View{
    var totalPrice: Float
    var orderList: [Food]
    
    var body: some View{
        Text("Thank you for using EatX")
            .font(.title2)
            .fontWeight(.semibold)
            .padding(.bottom, 5)
        Text("Click Order to comfirm")
            .font(.headline)
            .fontWeight(.light)
        Text(totalPrice, format: .currency(code: Locale.current.currencyCode ?? "USD"))
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.vertical)
        Spacer()
        Text("Cart summary: ")
            .font(.title3)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 50)
            .padding([.leading], 20)
        //Use a scroll view here instead of List for the background to blend in with the surrounding
        ScrollView{
            ForEach(orderList){
                order in
                Text(order.name)
                    .padding(5)
                Divider()
                    .padding(.horizontal, 20)
            }
        }
        .padding(5)
    }
}
