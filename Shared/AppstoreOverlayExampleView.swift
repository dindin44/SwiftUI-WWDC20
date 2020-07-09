//
//  AppstoreOverlayExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 26/06/2020.
//

import SwiftUI
import StoreKit

struct AppstoreOverlayExampleView: View {
    @State private var showOverlay = false
    var body: some View {
        Button("Show App Store Overlay") {
            showOverlay.toggle()
        }
        .appStoreOverlay(isPresented: $showOverlay) {
            SKOverlay.AppConfiguration(appIdentifier: "640199958", position: .bottom)
        }
        .navigationTitle("App Store Overlay")
    }
}

struct AppstoreOverlayExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AppstoreOverlayExampleView()
    }
}
