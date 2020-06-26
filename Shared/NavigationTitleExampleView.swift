//
//  NavigationTitleExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Rob Sturgeon on 26/06/2020.
//

import SwiftUI

struct NavigationTitleExampleView: View {
    var body: some View {
      NavigationView {
        
        #if os(macOS)
        List {
          ForEach(0...50, id: \.self) { _ in
            Text("Example list item")
          }
        }
        .navigationTitle(".navigationTitle")
        .navigationSubtitle(".navigationSubtitle")
        #else
        List {
          ForEach(0...50, id: \.self) { _ in
            Text("Example list item")
          }
        }
        .navigationTitle(".navigationTitle")
        #endif
      }
    }
}

struct NavigationTitleExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTitleExampleView()
    }
}
