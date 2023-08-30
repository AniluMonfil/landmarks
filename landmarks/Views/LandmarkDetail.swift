//
//  LandmarkDetail.swift
//  landmarks
//
//  Created by anilu monfil on 25/08/23.
//

import SwiftUI

struct LandmarkDetail: View {
    //like constructor
    var landmark: Landmark
    
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
                
                Text(landmark.name)
                    .font(.title)//Se llaman modifiers
                    .foregroundColor(.black)
                
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
    static var previews: some View {
        //pass constructor
        LandmarkDetail(landmark: landmarks[0])
    }
}
