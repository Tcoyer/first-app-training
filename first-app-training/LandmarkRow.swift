//
//  LandmarkRow.swift
//  first-app-training
//
//  Created by Reynard Octavius Tan on 18/03/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack{
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill").foregroundStyle(.yellow)
            }
            
        }
    }
}

#Preview {
    //landmarks dari var yang ngambil di JSON
    // landmark dari atas
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
   
