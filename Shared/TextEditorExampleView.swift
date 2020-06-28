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
  @State private var text: String = ""
  @State private var fontWeight = WeightType.regular
  @State private var fontSize = CGFloat(12)
  @State private var customFont = true
  @State private var foregroundColor = Color.primary
  @State private var colourPickerShown = true
  var body: some View {
    ScrollView(.vertical) {
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
        HStack {
          Button("Clear text") {
            self.text = ""
          }
          ColourPickerButton(dismissSheet: true, buttonTitle: "Text colour", previousColour: foregroundColor, colour: $foregroundColor, colourPickerShown: $colourPickerShown)
          
        }
        TextEditor(text: $text)
          .font(.system(size: fontSize, weight: self.fontWeight.weight))
          .foregroundColor(foregroundColor)
          .frame(height: 300)
      }
      .padding(.horizontal)
    }
  }
}


struct ColourPickerButton: View {
  let dismissSheet: Bool
  let buttonTitle: String
  let previousColour: Color
  @Binding var colour: Color
  @State var colourInitialised = false
  @Binding var colourPickerShown: Bool
  var body: some View {
    Button(buttonTitle) {
      colourPickerShown.toggle()
    }
    .padding()
    .background(Color.white)
    .cornerRadius(5)
    .onChange(of: colour) { _ in
      if dismissSheet && colour == previousColour {
        self.colourPickerShown.toggle()
      }
    }
    .sheet(isPresented: $colourPickerShown) {
      ColourPickerSheetView(colour: $colour, previousColour: colour)
    }
  }
}

struct ColourPickerSheetView: View {
  @Binding var colour: Color
  let previousColour: Color
  var body: some View {
    VStack {
      if colour == previousColour {
        Text("Swipe down to dismiss")
        ColorPicker("Colour", selection: $colour)
      }
    }
  }
}
