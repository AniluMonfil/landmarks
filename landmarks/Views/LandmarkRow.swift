//
//  LandmarkRow.swift
//  landmarks
//
//  Created by anilu monfil on 25/08/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 60)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        //LandmarkRow type needs a landmark instance during initialization
        Group{
            LandmarkRow(landmark: landmarks[0])

        }
        //.previewLayout(.fixed(width: 300, height: 70))
        
    }
}
