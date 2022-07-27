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
 1. https://swiftwithmajid.com/2020/08/05/menus-in-swiftui/
 2. https://www.raywenderlich.com/26924502-swiftui-search-getting-started
 3. https://swiftontap.com/toolbaritem
 4.
 */

import SwiftUI

struct ContentView: View {
    @State var isShowingDetailView = false
    @State private var selectedMeal = "All"
    @State var searchQuery = ""
    @State var filteredRecipes = foods
    @State var orderList:[Food] = []
    @State var totalPrice:Float = 0
    
    
    var body: some View {
        NavigationView {
            VStack{
                foodFilter()
                    .navigationBarTitle("EatX")
                    .onChange(of: searchQuery) { _ in
                        searchRecipes()
                    }
                    .searchable(text: $searchQuery, prompt: "Search by meal name")
                    .onSubmit(of: .search) {
                        searchRecipes()
                    }
                
                    .toolbar {
                        ToolbarItem(id: "1", placement: .navigationBarTrailing) {
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
                GeometryReader{
                    geometry in
                    Button(){
                        isShowingDetailView.toggle()
                    } label: {
                        Image(systemName: "cart")
                            .font(.system(size: 20, weight: .regular))
                            .foregroundColor(.white)
                    } .sheet(isPresented: $isShowingDetailView){
                        CheckOut(showSheetView: $isShowingDetailView, orderList: $orderList, totalPrice: $totalPrice)
                    }
                    .frame(width: 30, height: 30)
                    .padding()
                    .background(.orange)
                    .clipShape(Capsule())
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * -70)
                }
                .frame(height: 1)
            }
            .ignoresSafeArea(.container, edges: .bottom)
        }
        .accentColor(.black)
    }
    
    func searchRecipes() {
        if searchQuery.isEmpty {
            // 1
            filteredRecipes = foods
        } else {
            // 2
            filteredRecipes = foods.filter {
                $0.name
                    .localizedCaseInsensitiveContains(searchQuery)
            }
        }
    }
    
    func filterRecipes() {
        filteredRecipes = foods.filter {
            $0.meal
                .localizedCaseInsensitiveContains(selectedMeal)
        }
        print(selectedMeal)
    }
    
    @ViewBuilder
    func foodFilter() -> some View {
        if(selectedMeal == "All"){
            ListView(foods: filteredRecipes, orderList: $orderList, totalPrice: $totalPrice)
        } else {
            FilterView(foods: filteredRecipes, filter: selectedMeal, orderList: $orderList, totalPrice: $totalPrice)
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(orderList: [], totalPrice: 5)
            
        }
    }
}
