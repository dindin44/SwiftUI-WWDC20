//
//  ScrollViewReaderExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//
//  If you want to programmatically make SwiftUI's ScrollView move to a specific location, you should embed a ScrollViewReader inside it. This provides a scrollTo() method that can move to any view inside the parent scrollview, just by providing its anchor.

import SwiftUI

struct ScrollViewReaderExampleView: View {
    let colors: [Color] = [.red, .green, .blue]
    
    var body: some View {
        ScrollView {
            ScrollViewReader { value in
                Button("Jump to #8") {
                    withAnimation {
                        value.scrollTo(8, anchor: .center)
                    }
                }
                .padding()
                
                ForEach(0..<10) { i in
                    Text("Example \(i)")
                        .frame(width:300, height: 300)
                        .background(colors[i % colors.count])
                        .id(i)
                }
            }
        }
        .navigationTitle("Scrollview Reader")
    }
}

struct ScrollViewReaderExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrollViewReaderExampleView()
        }
    }
}
