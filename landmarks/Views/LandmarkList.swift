//
//  LandmarkList.swift
//  landmarks
//
//  Created by anilu monfil on 25/08/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView {
            //Model data’s landmarks array to the List initializer.
            //To add identifiable change (landmarks, id: \.id) to (landmarks)
            List(landmarks){ landmark in
                
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                    
                }
               
            }
            //inside navigationview
            .navigationTitle("Landmarks")
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        //Display in device models
        ForEach(["iPhone SE (3rd generation)", "iPad (10th generation)"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
            
        }
        
    }
}
