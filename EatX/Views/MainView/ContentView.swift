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
 1. https://swiftwithmajid.com/2020/08/05/menus-in-swiftui/
 2. https://www.raywenderlich.com/26924502-swiftui-search-getting-started
 3. https://swiftontap.com/toolbaritem
 4.https://stackoverflow.com/questions/63968344/swiftui-how-to-show-an-alert-after-a-sheet-is-closed
 */

import SwiftUI

struct ContentView: View {
    @State var isShowingDetailView = false
    @State private var selectedMeal = "All"
    @State var searchQuery = ""
    @State var filteredRecipes = foods
    @State var orderList:[Food] = []
    @State var totalPrice:Float = 0
    
    @State var showAlert = false
    @State var closeSheetWithAlert = false
    
    
    var body: some View {
        //Main View
        NavigationView {
            //Verticle stack for the food list and button
            VStack{
                //call foodFilter function
                foodFilter()
                    .navigationBarTitle("EatX")
                    //check change when user enter the query
                    .onChange(of: searchQuery) { _ in
                        searchDishes(searchQuery: searchQuery, filteredRecipes: &filteredRecipes)
                    }
                    //Make this view searchable, adding support for Apple native search for this view
                    .searchable(text: $searchQuery, prompt: "Search by meal name")
                    //check submit when user hit enter the search query
                    .onSubmit(of: .search) {
                        searchDishes(searchQuery: searchQuery, filteredRecipes: &filteredRecipes)
                    }
                    //Add toolbar for this view
                    .toolbar {
                        ToolbarItem(id: "1", placement: .navigationBarTrailing) {
                            //Adding filter selection
                            Menu {
                                Picker(selection: $selectedMeal, label: Text("Sorting options")) {
                                    ForEach(MealType, id: \.self){
                                        Button($0, action: {})
                                    }
                                }
                            } label: {
                                Image(systemName: "line.3.horizontal.decrease.circle")
                            }
                        }
                    }
                //Read the screen size to display the cart button to always at the bototm of the screen
                GeometryReader{
                    geometry in
                    //Cart button here
                    Button(){
                        isShowingDetailView.toggle()
                    } label: {
                        Image(systemName: "cart")
                            .font(.system(size: 20, weight: .regular))
                            .foregroundColor(.white)
                    } .sheet(isPresented: $isShowingDetailView, onDismiss: {
                        //trigger alert function when sheet is dismissed
                        showAlert = closeSheetWithAlert
                    }){
                        //Pass in checkout view for this sheet
                        CheckOut(showSheetView: $isShowingDetailView, orderList: $orderList, totalPrice: $totalPrice, closeSheetWithAlert: $closeSheetWithAlert)
                        
                    }
                    //Alert function to show then the sheet is dissmissed
                    .alert(isPresented: $showAlert) {
                        closeSheetWithAlert = false
                        return Alert(title: Text("Your order have been confirmed!"), message: Text("We hope you like our services"))
                    }
                    .frame(width: 30, height: 30)
                    .padding()
                    .background(.orange)
                    .clipShape(Capsule())
                    //Set the fixed position for the button
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * -70)
                }
                //Set the height for geometry reader view
                .frame(height: 1)
            }
            .ignoresSafeArea(.container, edges: .bottom)
        }
    }
    
    //foodFilter function to display the coresponding view when user select the filter
    @ViewBuilder
    func foodFilter() -> some View {
        //Display all the food list
        if(selectedMeal == "All"){
            ListView(foods: filteredRecipes, orderList: $orderList, totalPrice: $totalPrice)
        } else {
            //Display filter food list
            FilterView(foods: filteredRecipes, filter: selectedMeal, orderList: $orderList, totalPrice: $totalPrice)
        }
    }
    
    //Show preview in Xcode
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(orderList: [], totalPrice: 5)
            
        }
    }
}
