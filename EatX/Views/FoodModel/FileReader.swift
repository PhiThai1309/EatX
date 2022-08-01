/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Thai Manh Phi
 ID: s3878070
 Created  date: 26/07/2022
 Last modified: 1/08/2022
 Acknowledgement:
 1. https://rmit.instructure.com/courses/104891/pages/w5-whats-happening-this-week?module_item_id=4179466
 */

import Foundation

//JSON file reader function
func decodeJsonFile(fileName: String) -> [Food] {
    if let file = Bundle.main.url(forResource: fileName, withExtension: nil){
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
        fatalError("Couldn't load \(fileName) file")
    }
    return [ ] as [Food]
}
