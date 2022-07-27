/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Thai Manh Phi
 ID: s3878070
 Created  date: 27/07/2022
 Last modified: dd/mm/yyyy (e.g. 05/08/2022)
 Acknowledgement:
 1.https://www.simpleswiftguide.com/how-to-present-new-sheet-view-from-navigationbaritems-button-in-swiftui/
 2.https://www.hackingwithswift.com/quick-start/swiftui/how-to-make-a-view-dismiss-itself
 3.https://www.hackingwithswift.com/quick-start/swiftui/how-to-prevent-a-sheet-from-being-dismissed-with-a-swipe
 */

import Foundation
import SwiftUI

struct CheckOut: View {
    @Binding var showSheetView: Bool
    @Binding var orderList: [Food]
    @Binding var totalPrice: Float
    
    var body: some View {
        NavigationView{
            VStack() {
                if(totalPrice == 0) {
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
                } else {
                    Text("Thank you for using EatX")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom, 5)
                    Text("Your order has been confirmed!")
                        .font(.headline)
                        .fontWeight(.light)
                    Text(totalPrice, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.vertical)
                    Spacer()
                    Text("Order summary: ")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 50)
                        .padding([.leading], 20)
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
                    Spacer()
                }
            }
            .navigationBarItems(trailing: Button(action: {
                self.showSheetView = false
                orderList.removeAll()
                totalPrice = 0
            }) {
                Text("Done").bold()
            })
        }
        .interactiveDismissDisabled()
    }
}

struct CheckOut_Previews: PreviewProvider {
    @State static var orderList = [Food]()
    @State static var show = false
    @State static var price:Float = 5
    static var previews: some View {
        CheckOut(showSheetView: $show, orderList: $orderList, totalPrice: $price)
    }
}
