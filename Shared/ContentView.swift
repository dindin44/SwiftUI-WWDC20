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
        case containerRelative = "Container Relative Shape"
        case toolbar = "Toolbar"
        case map = "Maps"
        case progress = "ProgressView"
        case video = "VideoPlayer"
        case datePicker = "Date Picker"
        case colorPicker = "Color Picker"
        case link = "Link"
        case paging = "Paging View"
        case navigationTitle = "Navigation title"
        case textEditor = "Text Editor"
        case disclosureGroup = "Disclosure Group"
        
        var sectionView: some View {
            return Group {
                switch self {
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
                case .paging:
                    Text("See code in SwiftUI_NewFeaturesApp.swift")
                case .navigationTitle:
                    NavigationTitleExampleView()
                case .textEditor:
                    TextEditorExampleView()
                case .disclosureGroup:
                    DisclosureGroupExampleView()
                }
            }
        }
    }
    private var sections: [SectionType] = SectionType.allCases.sorted(by: {$0.rawValue < $1.rawValue})
    
    var body: some View {
        NavigationView {
            List(sections, id: \.self) { section in
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
            
            Text("Click on something to learn!")
                .font(.largeTitle)
                .navigationTitle("What's new in SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
