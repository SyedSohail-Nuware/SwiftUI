//
//  LandmarkRow.swift
//  myapp
//
//  Created by syed.sohail on 26/12/22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 60.0,height: 60.0)
            Text(landmark.name).bold()
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
//            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 10.0, height: 70.0))
        
//        LandmarkRow()
    }
}
