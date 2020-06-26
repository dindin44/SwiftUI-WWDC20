//
//  ContentView.swift
//  Shared
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//

import SwiftUI

struct ContentView: View {
    enum SectionType: String, CaseIterable {
        case grid = "Grid Layout"
        case scroll = "ScrollViewReader"
        case listChildren = "List Children"
        case appstorage = "AppStorage"
        case scaledMetric = "ScaledMetric"
        case stateObject = "StateObject"
        case matchedGeometry = "MatchedGeometryEffect"
        case containerRelative = "ContainerRelativeShape"
        case toolbar = "Toolbar"
        case map = "Maps"
        case progress = "ProgressView"
        case video = "VideoPlayer"
        case datePicker = "Date Picker"
        case colorPicker = "Color Picker"
        case link = "Link"
    }
    private var sections: [SectionType] = SectionType.allCases
    
    var body: some View {
        NavigationView {
            List(sections, id: \.self) { section in
                if section == .link {
                    Link(destination: URL(string:"https://developer.apple.com/wwdc20/")!) {
                        Label("Link", systemImage: "link")
                            .foregroundColor(Color.blue)
                    }
                } else {
                    NavigationLink(destination: getSectionView(for: section)) {
                        Label(section.rawValue, systemImage: "info.circle")
                    }
                }
            }
            
            Text("Click on something to learn!")
                .font(.largeTitle)
                
                .navigationTitle("What's new in SwiftUI")
        }
    }
    
    func getSectionView(for type: SectionType) -> some View {
        Group {
            switch type {
            case .grid:
                GridExampleView()
            case .scroll:
                ScrollViewReaderExampleView()
            case .toolbar:
                ToolbarExampleView()
            case .progress:
                ProgressExampleView()
            case .datePicker:
                DatePickerExampleView()
            case .map:
                MapExampleView()
            case .video:
                VideoExampleView()
            case .link:
                EmptyView()
            case .appstorage:
                AppStorageExampleView()
            case .scaledMetric:
                ScaledMetricExampleView()
            case .stateObject:
                StateObjectExampleView()
            case .listChildren:
                ListChildrenExampleView()
            case .matchedGeometry:
                MatchedGeometryEffectExampleView()
            case .colorPicker:
                ColorPickerExampleView()
            case .containerRelative:
                ContainerRelativeShapeExampleView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
