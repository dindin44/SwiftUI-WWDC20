//
//  NavigationTitleExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Rob Sturgeon on 26/06/2020.
//

import SwiftUI
#if os(iOS)
struct NavigationTitleExampleView: View {
  enum BarStyle: String, CaseIterable {
    case automatic, inline, large
    
    var style: NavigationBarItem.TitleDisplayMode {
      switch self {
      
      case .automatic:
        return .automatic
      case .inline:
        return .inline
      case .large:
        return .large
      }
    }
    
  }
  @State var barStyle = BarStyle.automatic
    var body: some View {
      Group {
        List {
          Picker(selection: $barStyle, label: Text(".navigationBarTitleDisplayMode")) {
            ForEach(BarStyle.allCases, id: \.self) {
              barStyle in Text(barStyle.rawValue)
            }
          }.pickerStyle(SegmentedPickerStyle())
          ForEach(0...50, id: \.self) { _ in
            Text("Example list item")
          }
        }
        .navigationTitle(".navigationTitle")
        .navigationBarTitleDisplayMode(barStyle.style)
      }
    }
}

struct NavigationTitleExampleView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationTitleExampleView()
    }
}
#endif
