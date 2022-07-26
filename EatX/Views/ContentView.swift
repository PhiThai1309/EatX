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
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    @State var searchQuery = ""
    @State var filteredRecipes = foods
    
    var body: some View {
        NavigationView {
            VStack {
                List(filteredRecipes) {
                    food in
                    NavigationLink(destination: FoodCard(food: food)) {
                        Label {
                            Text(food.name)
                        } icon:  {
                            Image(food.thumbnailImage)
                                .clipShape(Circle())
                        }
                    }
                }
            }
            .onChange(of: searchQuery) { _ in
              filterRecipes()
            }
            .searchable(text: $searchQuery, prompt: "Search by meal name")
            .onSubmit(of: .search) {
              filterRecipes()
            }
            .navigationTitle("EatX")
            .toolbar {
                ToolbarItem(id: "1", placement: .navigationBarTrailing) {
                    //                    Label("Filter", systemImage: "line.3.horizontal.decrease.circle")
                    Menu {
                        Picker(selection: $selectedStudent, label: Text("Sorting options")) {
                            ForEach(students, id: \.self){
                                Text($0)
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
    
    func filterRecipes() {
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

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
            
        }
    }
}
