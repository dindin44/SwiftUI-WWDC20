//
//  SwiftUI_NewFeaturesApp.swift
//  Shared
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//

import SwiftUI

@main
struct SwiftUI_NewFeaturesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            
            // Comment out ContentView and uncomment below TabView to see Paging views with TabView
            /*
            TabView {
                ForEach(0..<4) { index in
                    PageView(index: index)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
             */
        }
    }
}

struct PageView: View {
    var index: Int
    var body: some View  {
        Text("Page \(index)")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
    }
}
