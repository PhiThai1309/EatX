/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Thai Manh Phi
 ID: s3878070
 Created  date: 19/07/2022
 Last modified: 29/07/2022
 Acknowledgement:
 */

import Foundation
import SwiftUI

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

var foods = decodeJsonFromJsonFile(jsonFileName: "menu.json")
