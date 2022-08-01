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
 */

import Foundation
import SwiftUI

//Food model
struct Food: Identifiable, Codable, Hashable {
    var id: Int
    var name: String
    var meal: String
    var price: Float
    var description: String
    
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }
    
    var secondImage: String{
        name.replacingOccurrences(of: " ", with: "-").lowercased() + "-2"
    }

    var thumbnailImage: String {
        "\(mainImage)-thumb"
    }
}

//Import food into an array from JSON file
var foods = decodeJsonFile(fileName: "menu.json")
