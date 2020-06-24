//
//  ColorPickerExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//

import SwiftUI

struct ColorPickerExampleView: View {
    @State private var bgColor =
        Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    var body: some View {
        VStack {
            ColorPicker("Set the background color", selection: $bgColor)
                .padding()
        }
        .background(bgColor)
        .navigationTitle("Color Picker")
    }
}

struct ColorPickerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerExampleView()
    }
}
