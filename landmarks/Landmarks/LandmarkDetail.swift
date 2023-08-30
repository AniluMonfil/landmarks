//
//  LandmarkDetail.swift
//  landmarks
//
//  Created by anilu monfil on 25/08/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    //like constructor
    var landmark: Landmark
    
    var landmarkIndex: Int{
        //Compute the index of landmark.id in the landmarks array
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
       
    }
    
    var body: some View {
        //Vstack initializer
        ScrollView {
            //MAPA
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            //Permitir que el contenido del mapa se extienda hasta el borde superior de la pantalla
                .ignoresSafeArea(edges: .top)
            
            //IMAGEN
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            //DATOS DEL LUGAR
            VStack(alignment: .leading) {
                
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    //A spacer expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About: \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                    .multilineTextAlignment(.leading)
                    
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        //pass constructor
        LandmarkDetail(landmark: ModelData().landmarks[0])
            .environmentObject(modelData)
    }
}
