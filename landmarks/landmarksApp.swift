//
//  landmarksApp.swift
//  landmarks
//
//  Created by anilu monfil on 17/08/23.
//

import SwiftUI

@main
struct landmarksApp: App {
    //Model object in the environment when you run the app in the simulator or on a device.
    @StateObject private var modelData = ModelData()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
