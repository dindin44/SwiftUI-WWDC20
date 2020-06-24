//
//  ProgressExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//

import SwiftUI

struct ProgressExampleView: View {
    @State private var downloadAmount = 0.0
    @State private var percentComplete: Double = 0.0
    
    var body: some View {
        VStack(spacing: 50) {
            ProgressView("Downloading...", value: downloadAmount, total: 100)
                        
            ProgressView("Downloading Photo", value: percentComplete, total: 100)
                        .progressViewStyle(CircularProgressViewStyle())
            ProgressView()
            
            Button("Update progress") {
                if downloadAmount < 100 {
                    downloadAmount += 5
                }
                
                if percentComplete < 100 {
                    percentComplete += 5
                }
            }.padding(50)
        }
        .navigationTitle("Progress View")
    }
}

struct ProgressExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProgressExampleView()
        }
    }
}
