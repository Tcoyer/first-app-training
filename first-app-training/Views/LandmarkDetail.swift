//
//  LandmarkDetail.swift
//  first-app-training
//
//  Created by Reynard Octavius Tan on 18/03/24.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark : Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y : -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("\(landmark.name)")
                    .font(.title)
                    .foregroundColor(.green)
                HStack {
                    Text("\(landmark.park)")
                        .font(.subheadline)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Text("\(landmark.state)")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                    
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text("\(landmark.description)")
            }
            .padding()
            
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
