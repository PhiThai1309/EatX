//
//  FileReader.swift
//  EatX
//
//  Created by Phi Thai on 26/07/2022.
//

import Foundation

func decodeJsonFromJsonFile(jsonFileName: String) -> [Food] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Food].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Food]
}
