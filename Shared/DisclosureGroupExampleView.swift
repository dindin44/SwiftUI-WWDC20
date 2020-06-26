//
//  DisclosureGroupExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 26/06/2020.
//

import SwiftUI

struct DisclosureGroupExampleView: View {
    @State private var revealDetails = false
    var body: some View {
        VStack {
            DisclosureGroup("Show terms", isExpanded: $revealDetails) {
                Text("long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here")
                
                Button("Hide again") {
                    revealDetails.toggle()
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle("Disclosure Group")
    }
}

struct DisclosureGroupExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupExampleView()
    }
}
