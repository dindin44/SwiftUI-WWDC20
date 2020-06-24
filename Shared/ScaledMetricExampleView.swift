//
//  ScaledMetricExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//
//  SwiftUI gives us the @ScaledMetric property wrapper to define numbers that should scale automatically according to the user's Dynamic Type Settings

import SwiftUI

struct ScaledMetricExampleView: View {
    @ScaledMetric var imageSize: CGFloat = 100
    
    // If you need your scaling to match up against a specific other piece of text, you can use the relativeTo parameter for your property wrapper, which lets you specify what font size to match.
    @ScaledMetric(relativeTo: .largeTitle) var relativeImageSize: CGFloat = 100
    
    var body: some View {
        Image(systemName: "cloud.sun.bolt.fill")
            .resizable()
            .frame(width: imageSize, height: imageSize)
            .navigationTitle("@ScaledMetric")
    }
}

struct ScaledMetricExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ScaledMetricExampleView()
    }
}
