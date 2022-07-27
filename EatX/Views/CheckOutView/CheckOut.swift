//
//  ListView.swift
//  EatX
//
//  Created by Phi Thai on 26/07/2022.
//

import Foundation
import SwiftUI

struct CheckOut: View {
    var body: some View {
        VStack() {
            Text("Thank you for using our service")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
                .padding(.top, 50)
            Spacer()
            Text(2, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.vertical)
        }
    }
    
    struct CheckOut_Previews: PreviewProvider {
        static var previews: some View {
            CheckOut()
            
        }
    }
}
