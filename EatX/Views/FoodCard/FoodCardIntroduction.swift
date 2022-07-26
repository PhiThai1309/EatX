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
        Text("Introduction")
            .font(.title)
            .fontWeight(.heavy)
            .padding(.top, 20)
            .padding(.bottom, 5)
        
        VStack{
            if(!expandable) {
                Text(food.description)
                    .lineLimit(1)
                    .transition(.opacity)
            } else {
                Text(food.description)
                    .transition(.opacity)
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
        static var previews: some View {
            FoodCard(food: foods[3])
                .previewDevice("iPhone 11")
        }
    }
}