//
//  FoodCard.swift
//  EatX
//
//  Created by Phi Thai on 19/07/2022.
//

import Foundation
import SwiftUI

struct FoodCard: View {
    @State var expandable = false
    var food: Food
    
    var body: some View {
        VStack() {
            Image(food.mainImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 400, alignment: .center)
            ScrollView{
                VStack(alignment: .leading) {
                    Text(food.name)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    HStack{
                        MealIcon(meal: food.meal)
                        Text(food.meal)
                    }.padding(.top, 0.1)
                    Spacer(minLength: 20)
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
                    Text(food.price, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.vertical)
                }
                .padding()
                Spacer()
                Button{
                    //                cartItems.add(item: food)
                    //                print(cartItems.items[0])
                } label: {
                    Label("Add to cart", systemImage: "cart.badge.plus")
                }
                .frame(width: 250)
                .padding()
                .background(.green)
                .clipShape(Capsule())
                .foregroundColor(.white)
                
            }
            //            ZStack {
            //                .position(x: .infinity, y: 200)
            //                    .frame(height: 100)
            //            }
        }
        .ignoresSafeArea()
        .accentColor(.blue)
    }
}

struct FoodCard_Previews: PreviewProvider {
    static var previews: some View {
        FoodCard(food: foods[3])
            .previewDevice("iPhone 11")
    }
}
