//
//  FoodCardIntroduction.swift
//  EatX
//
//  Created by Phi Thai on 26/07/2022.
//

import Foundation
import SwiftUI

struct FoodCardIntroduction: View {
    @State var expandable = false
    var food: Food
    
    var body: some View {
        Divider()
        Text("Description")
            .font(.title2)
            .fontWeight(.heavy)
            .padding(.top, 20)
            .padding(.bottom, 5)
        
        VStack{
            if(!expandable) {
                Text(food.description)
                    .lineLimit(1)
            } else {
                Text(food.description)
            }
        }
        Spacer()
        HStack{
            Spacer()
            if(expandable) {
                Button("less..."){
                    expandable.toggle()
                }
            } else {
                Button("more..."){
                    expandable.toggle()
                }
            }
            
        }
        .listRowSeparator(.hidden)
        //                    Text(food.description)
        .font(.body)
    }
    
    struct FoodCardIntroduction_Previews: PreviewProvider {
        @State static var orderList = [Food]()
        @State static var price:Float = 5
        static var previews: some View {
            FoodCard(food: foods[3], orderList: $orderList, totalPrice: $price)
                .previewDevice("iPhone 11")
        }
    }
}
