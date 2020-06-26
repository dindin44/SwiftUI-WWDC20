//
//  SwiftUI_NewFeaturesApp.swift
//  Gauge Extension
//
//  Created by Rob Sturgeon on 24/06/2020.
//

import SwiftUI

@main
struct SwiftUI_NewFeaturesApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
