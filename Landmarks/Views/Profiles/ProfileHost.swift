//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Matt Burke on 1/16/21.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    @EnvironmentObject var modelData: ModelData
    @Environment(\.editMode) var editMode



    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            HStack {
                Spacer()
                EditButton()
            }

            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
            }
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
