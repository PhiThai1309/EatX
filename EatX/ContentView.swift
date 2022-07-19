//
//  ContentView.swift
//  EatX
//
//  Created by Phi Thai on 19/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(foods) {
                food in
                NavigationLink(destination: FoodCard(food: food)) {
                    Label {
                        Text(food.name)
                    } icon:  {
                        Image(food.thumbnailImage)
                            .clipShape(Circle())
                    }
                    .navigationTitle("EatX")
                }
            }
        }
        .accentColor(.black)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
