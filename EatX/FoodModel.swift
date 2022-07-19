//
//  FoodModal.swift
//  EatX
//
//  Created by Phi Thai on 19/07/2022.
//

import Foundation
import SwiftUI

struct Food: Identifiable, Codable {
    var id: Int
    var name: String
    var photoCredit: String
    var price: Float
    var description: String
    
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }

    var thumbnailImage: String {
        "\(mainImage)-thumb"
    }
}
