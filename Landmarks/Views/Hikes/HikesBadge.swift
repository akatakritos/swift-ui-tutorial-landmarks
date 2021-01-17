//
//  HikesBadge.swift
//  Landmarks
//
//  Created by Matt Burke on 1/16/21.
//

import SwiftUI

struct HikesBadge: View {
    var name: String

    var body: some View {
        VStack {
            Badge()
                .frame(width: 300.0, height: 300.0)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name)")
        }
    }
}

struct HikesBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikesBadge(name: "Preview Testing")
    }
}
