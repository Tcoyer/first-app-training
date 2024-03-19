//
//  LandmarkList.swift
//  first-app-training
//
//  Created by Reynard Octavius Tan on 18/03/24.
//

import SwiftUI

struct LandmarkList: View {

    @State private var showFavoritesOnly = false
    
    var body: some View {

        NavigationSplitView{
            List(landmarks){ landmark in
                NavigationLink {
                    LandmarkDetail(landmark:landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")

        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
