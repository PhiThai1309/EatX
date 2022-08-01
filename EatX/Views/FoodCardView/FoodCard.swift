/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Thai Manh Phi
 ID: s3878070
 Created  date: 19/07/2022
 Last modified: 1/08/2022
 Acknowledgement:
 */

import Foundation
import SwiftUI

//Detail view of the food
struct FoodCard: View {
    var food: Food
    @Binding var orderList: [Food]
    @Binding var totalPrice: Float
    @State var showAlert = false
    
    var body: some View {
        //Read the size of the main screen
        GeometryReader{
            mainGeo in
            VStack() {
                //Display foodImage
                FoodImage(food: food, screen: mainGeo)
                //Scrollview for the content
                ScrollView{
                    VStack(alignment: .leading) {
                        //Call header view
                        FoodCardHeader(food: food)
                        //Call introduction view
                        FoodCardIntroduction(food: food)
                        //Call price view
                        FoodCardPrice(food: food)
                    }
                    .padding()
                    Spacer()
                }
                GeometryReader{
                    geometry in
                    //"Add to card" button
                    Button{
                        orderList.append(food)
                        totalPrice = totalPrice + food.price
                        showAlert = true
                    } label: {
                        Label("Add to cart", systemImage: "cart.badge.plus")
                    }
                    //Show alert when the button is pressed
                    .alert(isPresented: $showAlert) {
                        Alert(title: Text("Add to card successfully"))
                    }
                    .frame(width: 250)
                    .padding()
                    .background(.orange)
                    .clipShape(Capsule())
                    .foregroundColor(.white)
                    //Ensure the button is fixed at the bottom of the view
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.4)
                }
                //Set the height for geometry reader view
                .frame(height: 60)
            }
            //Ignore safe area
            .ignoresSafeArea(.container, edges: .top)
        }
    }
    //Show preview in Xcode
    struct FoodCard_Previews: PreviewProvider {
        @State static var orderList = [Food]()
        @State static var price:Float = 5.0
        static var previews: some View {
            FoodCard(food: foods[3], orderList: $orderList, totalPrice: $price)
                .previewDevice("iPhone 11")
        }
    }
}


