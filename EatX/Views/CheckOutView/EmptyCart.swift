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

//This is a empty cart view
struct EmptyCart: View{
    var body: some View{
        Image(systemName: "cart.badge.minus")
            .font(.system(size: 50, weight: .bold))
            .foregroundColor(Color.gray)
        Text("Your cart is empty")
            .font(.title2)
            .fontWeight(.semibold)
            .padding(.bottom, 5)
            .foregroundColor(Color.gray)
        Text("Please select a food to proceed")
            .font(.title3)
            .fontWeight(.light)
            .padding(.vertical, 100)
            .foregroundColor(Color.gray)
        Spacer()
    }
}
