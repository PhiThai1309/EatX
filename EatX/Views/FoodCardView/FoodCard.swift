//
//  FoodCard.swift
//  EatX
//
//  Created by Phi Thai on 19/07/2022.
//

import Foundation
import SwiftUI

struct FoodCard: View {
    var food: Food
    @Binding var orderList: [Food]
    @Binding var totalPrice: Float
    @State var showAlert = false
    
    var body: some View {
        GeometryReader{
            mainGeo in
            VStack() {
                FoodImage(food: food, height: mainGeo)
                ScrollView{
                    VStack(alignment: .leading) {
                        FoodCardHeader(food: food)
                        FoodCardIntroduction(food: food)
                        FoodCardPrice(food: food)
                    }
                    .padding()
                    Spacer()
                }
                //            ZStack {
                //                .position(x: .infinity, y: 200)
                //                    .frame(height: 100)
                //            }
                GeometryReader{
                    geometry in
                    Button{
                        //                cartItems.add(item: food)
                        //                print(cartItems.items[0])
                        orderList.append(food)
                        totalPrice = totalPrice + food.price
                        showAlert = true
                    } label: {
                        Label("Add to cart", systemImage: "cart.badge.plus")
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(title: Text("Add to card successfully"))
                    }
                    .frame(width: 250)
                    .padding()
                    .background(.orange)
                    .clipShape(Capsule())
                    .foregroundColor(.white)
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.4)
                }
                .frame(height: 60)
            }
            .ignoresSafeArea(.container, edges: .top)
            .accentColor(.blue)
            
        }
        }
}

struct FoodCard_Previews: PreviewProvider {
    @State static var orderList = [Food]()
    @State static var price:Float = 5.0
    static var previews: some View {
        FoodCard(food: foods[3], orderList: $orderList, totalPrice: $price)
            .previewDevice("iPhone 11")
    }
}
