/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Your name (e.g. Nguyen Van Minh)
 ID: Your student id (e.g. 1234567)
 Created  date: dd/mm/yyyy (e.g. 31/07/2022)
 Last modified: dd/mm/yyyy (e.g. 05/08/2022)
 Acknowledgement:
 1. https://swiftwithmajid.com/2020/08/05/menus-in-swiftui/
 2. https://www.raywenderlich.com/26924502-swiftui-search-getting-started
 3. https://swiftontap.com/toolbaritem
 4.
 */

import SwiftUI

struct ContentView: View {
    @State private var selectedMeal = "All"
    @State var searchQuery = ""
    @State var filteredRecipes = foods
    
    @ViewBuilder
    func foodFilter() -> some View {
        if(selectedMeal == "All"){
            ListView(foods: filteredRecipes)
        } else {
            FilterView(foods: filteredRecipes, filter: selectedMeal)
        }
    }
    
    var body: some View {
        NavigationView {
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
                                    Button($0, action: {
                                        filteredRecipes = foods.filter {
                                            $0.meal
                                                .localizedCaseInsensitiveContains(selectedMeal)
                                        }
                                    })
                                }
                            }
                        } label: {
                            Image(systemName: "line.3.horizontal.decrease.circle")
                        }
                    }
                }
            //            .navigationBarTitleDisplayMode(.inline)
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
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
            
        }
    }
}
