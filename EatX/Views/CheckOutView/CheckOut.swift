/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Thai Manh Phi
 ID: s3878070
 Created  date: 26/07/2022
 Last modified: 29/07/2022
 Acknowledgement:
 1.https://www.simpleswiftguide.com/how-to-present-new-sheet-view-from-navigationbaritems-button-in-swiftui/
 2.https://www.hackingwithswift.com/quick-start/swiftui/how-to-make-a-view-dismiss-itself
 3.https://www.hackingwithswift.com/quick-start/swiftui/how-to-prevent-a-sheet-from-being-dismissed-with-a-swipe
 4.https://www.appcoda.com/swiftui-toolbar/
 5.https://developer.apple.com/documentation/swiftui/view/navigationbaritems(leading:trailing:)
 */

import Foundation
import SwiftUI

struct CheckOut: View {
    @Binding var showSheetView: Bool
    @Binding var orderList: [Food]
    @Binding var totalPrice: Float
    
    @Binding var closeSheetWithAlert:Bool
    
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
                    Button(action: {
                        showSheetView = false
                        totalPrice = 0
                        orderList.removeAll()
                        if(orderList.isEmpty){
                            closeSheetWithAlert = true
                        }
                    }){
                        Label("Confirm order!", systemImage: "checkmark")
                    }
                    .frame(width: 250)
                    .padding()
                    .background(.orange)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .disabled(orderList.isEmpty)
                }
                Spacer()
            }
            .navigationBarItems(trailing: Button(action: {
                showSheetView = false
            }) {
                Text("Dismiss").bold().foregroundColor(.red)
            })
        }
    }
}

struct CheckOut_Previews: PreviewProvider {
    @State static var orderList = [Food]()
    @State static var show = false
    @State static var price:Float = 5
    static var previews: some View {
        CheckOut(showSheetView: $show, orderList: $orderList, totalPrice: $price, closeSheetWithAlert: $show)
    }
}
