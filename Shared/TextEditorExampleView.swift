//
//  TextEditorExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Rob Sturgeon on 26/06/2020.
//

import SwiftUI

enum WeightType: String, CaseIterable {
  case black, bold, heavy, light, medium, regular, semibold, thin, ultraLight

  
  var weight: Font.Weight {
    switch self {
    
    case .black:
      return .black
    case .bold:
      return .bold
    case .heavy:
      return .heavy
    case .light:
      return .light
    case .medium:
      return .medium
    case .regular:
      return .regular
    case .semibold:
      return .semibold
    case .thin:
      return .thin
    case .ultraLight:
      return .ultraLight
    }
  }
}

struct TextEditorExampleView: View {
  @State private var text: String = "This example also uses the new Dynamic Type syntax"
  @State private var fontWeight = WeightType.regular
  @State private var fontSize = CGFloat(12)
  @State private var customFont = true
  var body: some View {
    VStack {
      Picker(selection: $fontWeight, label: EmptyView()) {
        ForEach(WeightType.allCases, id: \.self) { fontWeight in
          Text(fontWeight.rawValue)
        }
      }
      .frame(height: 130)
      .offset(y: -25)
      Stepper(value: $fontSize, in: 1...100) {
        Text("Font size: \(String(format: "%.1f", fontSize))")
      }
      Button("Clear text") {
        self.text = ""
      }
      TextEditor(text: $text)
        .font(.system(size: fontSize, weight: self.fontWeight.weight))
        .padding()
        
        
    }
    .padding(.horizontal)
  }
}

struct TextEditorExampleView_Previews: PreviewProvider {
  static var previews: some View {
    TextEditorExampleView()
  }
}