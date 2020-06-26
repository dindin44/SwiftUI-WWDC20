//
//  ContentView.swift
//  Shared
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//

import SwiftUI

struct ContentView: View {
    private var sections: [SectionType] = SectionType.allCases.sorted(by: {$0.rawValue < $1.rawValue})
    
    var body: some View {
        NavigationView {
            
            listBody
            
            Text("Click on something to learn!")
                .font(.largeTitle)
        }
    }
    
    var listBody: some View {
        let content = List(sections, id: \.self) { section in
            if section == .link {
                Link(destination: URL(string:"https://developer.apple.com/wwdc20/")!) {
                    Label("Link", systemImage: "link")
                        .foregroundColor(Color.blue)
                }
            } else {
                NavigationLink(destination: section.sectionView) {
                    Label(section.rawValue, systemImage: "info.circle")
                }
            }
        }
        .frame(minWidth: 300, minHeight: 500)
        .navigationTitle("What's new in SwiftUI")
        
        #if os(iOS)
        return content.listStyle(InsetGroupedListStyle())
        #else
        return content
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
