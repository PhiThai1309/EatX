//
//  FoodModal.swift
//  EatX
//
//  Created by Phi Thai on 19/07/2022.
//

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

    var thumbnailImage: String {
        "\(mainImage)-thumb"
    }
}
