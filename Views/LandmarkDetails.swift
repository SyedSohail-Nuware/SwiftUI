//
//  LandmarkDetails.swift
//  myapp
//
//  Created by syed.sohail on 27/12/22.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView(){
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300.0)
            
            CircleImg(image: landmark.image)
                .padding(.bottom, -130)
                .offset(y: -130)
            VStack(alignment: .leading){
                
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }.font(.subheadline)
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }.padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: landmarks[0])
    }
}
