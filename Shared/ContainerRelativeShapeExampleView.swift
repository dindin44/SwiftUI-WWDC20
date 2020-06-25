//
//  ContainerRelativeShapeExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 25/06/2020.
//

import SwiftUI

struct ContainerRelativeShapeExampleView: View {
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .inset(by: 4)
                .fill(Color.blue)
            
            Text("Hello, World!")
                .font(.headline)
        }
        .navigationTitle("ContainerRelativeShape")
    }
}

struct ContainerRelativeShapeExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerRelativeShapeExampleView()
    }
}
