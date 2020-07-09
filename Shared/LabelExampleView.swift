//
//  LabelExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Rob Sturgeon on 09/07/2020.
//

import SwiftUI

struct LabelExampleView: View {
    var body: some View {
      VStack {
      Label("Games", systemImage: "gamecontroller")
        Label {
            Text("SwiftUI")
              .offset(y: -10)
        } icon: {
            Image("swift-ui-logo")
              .resizable()
              .scaledToFit()
              .frame(height: 30)
        }
      }
    }
}

struct LabelExampleView_Previews: PreviewProvider {
    static var previews: some View {
        LabelExampleView()
    }
}
