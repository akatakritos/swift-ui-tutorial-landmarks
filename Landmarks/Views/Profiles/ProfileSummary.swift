//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Matt Burke on 1/16/21.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile;
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10.0) {
                Text(profile.username)
                    .font(.title)
                    .fontWeight(.bold)

                Text("Notifications: \(profile.prefersNotifications ? "On" : "Off")")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)

                Divider()

                VStack(alignment: .leading){
                    Text("Completed Badges")
                        .font(.headline)
                    ScrollView {
                        HStack {
                            HikesBadge(name: "First Hike")
                            HikesBadge(name: "Earth Day")
                                .hueRotation(/*@START_MENU_TOKEN@*/Angle(degrees: 90)/*@END_MENU_TOKEN@*/)
                            HikesBadge(name: "Tenth Hike")
                                .grayscale(/*@START_MENU_TOKEN@*/0.50/*@END_MENU_TOKEN@*/)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                }

                Divider()

                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)

                    HikeView(hike: modelData.hikes[0])
                }

            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
