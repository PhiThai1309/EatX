/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Thai Manh Phi
 ID: s3878070
 Created  date: 1/08/2022
 Last modified: 1/08/2022
 Acknowledgement:
 */
import Foundation


//Function to search dishes for the main view
func searchDishes(searchQuery: String, filteredRecipes: inout [Food]) {
    //If there is no query, return the full list
    if searchQuery.isEmpty {
        filteredRecipes = foods
    } else {
        //Else return a list that contain the search query
        filteredRecipes = foods.filter {
            $0.name
                .localizedCaseInsensitiveContains(searchQuery)
        }
    }
}
