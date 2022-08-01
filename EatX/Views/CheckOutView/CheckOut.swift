/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Thai Manh Phi
 ID: s3878070
 Created  date: 26/07/2022
 Last modified: 1/08/2022
 Acknowledgement:
 1.https://www.simpleswiftguide.com/how-to-present-new-sheet-view-from-navigationbaritems-button-in-swiftui/
 2.https://www.hackingwithswift.com/quick-start/swiftui/how-to-make-a-view-dismiss-itself
 3.https://www.hackingwithswift.com/quick-start/swiftui/how-to-prevent-a-sheet-from-being-dismissed-with-a-swipe
 4.https://www.appcoda.com/swiftui-toolbar/
 5.https://developer.apple.com/documentation/swiftui/view/navigationbaritems(leading:trailing:)
 */

import Foundation
import SwiftUI

//This is the view for the cart summary
struct CheckOut: View {
    @Binding var showSheetView: Bool
    @Binding var orderList: [Food]
    @Binding var totalPrice: Float
    
    @Binding var closeSheetWithAlert:Bool
    
    var body: some View {
        NavigationView{
            VStack() {
                //If the cart is empty, show the empty cart view
                if(totalPrice == 0) {
                    EmptyCart()
                } else {
                    //If not then preview a cart view
                    CartView(totalPrice: totalPrice, orderList: orderList)
                    Spacer()
                    //Add "Confirm order!" button
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
            //Add "Dismiss" button on top of the sheet view
            .navigationBarItems(trailing: Button(action: {
                showSheetView = false
            }) {
                Text("Dismiss").bold().foregroundColor(.red)
            })
        }
    }
    //Show preview in Xcode
    struct CheckOut_Previews: PreviewProvider {
        @State static var orderList = [Food]()
        @State static var show = false
        @State static var price:Float = 5
        static var previews: some View {
            CheckOut(showSheetView: $show, orderList: $orderList, totalPrice: $price, closeSheetWithAlert: $show)
        }
    }
}


