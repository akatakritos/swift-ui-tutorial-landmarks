//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Matt Burke on 1/5/21.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)

            CircleImage()
                .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/-130.0/*@END_MENU_TOKEN@*/)
                .padding(/*@START_MENU_TOKEN@*/.bottom, -130.0/*@END_MENU_TOKEN@*/)


            VStack(alignment: .leading) {

                Text("Turtle Rock")
                    .font(.title)

                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About Turtle Rock")
                    .font(.title2)

                Text("Descriptive text goes here")
                    .font(.subheadline)

            }.padding()

            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
