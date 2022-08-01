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
 */

import Foundation
import SwiftUI

struct FoodImage: View{
    var food: Food
    var screen: GeometryProxy
    
    var body: some View{
        //ScrollView for the image
        ScrollView(.horizontal){
            //Display the image horizontally, the image will take the width and the size of the parent view
            HStack{
                Image(food.mainImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: screen.size.width ,height: screen.size.height * 0.5, alignment: .center)
                    //Crop the image that is oversize
                    .clipped()
                Image(food.secondImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: screen.size.width ,height: screen.size.height * 0.5, alignment: .center)
                    //Crop the image that is oversize
                    .clipped()
            }
        }
    }
}
