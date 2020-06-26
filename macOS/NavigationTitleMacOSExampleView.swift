//
//  NavigationTitleExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Rob Sturgeon on 26/06/2020.
//

import SwiftUI
#if os(macOS)
struct NavigationTitleExampleView: View {
    var body: some View {
      
      List {
        ForEach(0...50, id: \.self) { _ in
          Text("Example list item")
        }
      }
      .navigationTitle(".navigationTitle")
      .navigationSubtitle(".navigationSubtitle")
    }
}

struct NavigationTitleExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTitleExampleView()
    }
}

#endif
