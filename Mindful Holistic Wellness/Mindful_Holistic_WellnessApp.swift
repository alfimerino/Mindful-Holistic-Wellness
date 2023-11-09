//
//  Mindful_Holistic_WellnessApp.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/6/23.
//

import SwiftUI

@main
struct Mindful_Holistic_WellnessApp: App {
    init() {
        UserDefaults.standard.register(defaults: [
            "showLaunchScreen": true
        ])
    }
    @AppStorage("showLaunchScreen") var firstLaunch = false
    var body: some Scene {
        WindowGroup {
            if firstLaunch {
                WelcomeView()                
            } else {
                MainView()
            }
        }
    }
}
