//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Matt Burke on 1/3/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
	
