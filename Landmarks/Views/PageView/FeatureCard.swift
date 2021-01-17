//
//  FeatureCard.swift
//  Landmarks
//
//  Created by Matt Burke on 1/16/21.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark

    var body: some View {
        landmark.featureImage?.resizable()
            .aspectRatio(3/2, contentMode: .fit)
            .overlay(TextOverlay(landmark: landmark))
    }
}

struct TextOverlay: View {
    var landmark: Landmark

    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(
                colors: [Color.black.opacity(0.6), Color.black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle().fill(gradient)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .fontWeight(.bold)
                Text(landmark.park)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: ModelData().features[0])
    }
}
