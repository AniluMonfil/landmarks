//
//  CircleImage.swift
//  landmarks
//
//  Created by anilu monfil on 17/08/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    
    var body: some View {
        image
        //Circle type is a shape that you can use as a mask
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image : Image("turtlerock"))
    }
}
