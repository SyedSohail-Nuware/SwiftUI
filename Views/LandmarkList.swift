//
//  LandmarkList.swift
//  myapp
//
//  Created by syed.sohail on 27/12/22.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavorite = false
    
    var filterLandmarks: [Landmark] {
        modelData.landmarks.filter{landmark in
            (!showFavorite || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationView {
            List {
                Toggle(isOn: $showFavorite) {
                    Text("Favorites")
                        .bold()
                        .fontDesign(.default)
                }
                ForEach(filterLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetails(landmark: landmark)
                    }label:{
                        LandmarkRow(landmark: landmark)
                    }
                }
                
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
