//
//  SectionType.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 26/06/2020.
//

import SwiftUI

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
  case dateFormatting = "Date Formatting"
  case appstore = "App Store Overlay"
  case signInWithApple = "Sign in with Apple"
  case spriteView = "SpriteView"
  case label = "Label"
  
  @ViewBuilder
  var sectionView: some View {
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
    case .dateFormatting:
      DateFormattingExampleView()
    case .signInWithApple:
      SignInWithAppleExampleView()
    case .label:
      LabelExampleView()
    case .appstore:
      #if targetEnvironment(macCatalyst)
      Text("App Store Overlay not supported on Mac Catalyst")
      #elseif os(macOS)
      Text("App Store Overlay not supported on Mac OS")
      #else
      AppstoreOverlayExampleView()
      #endif
    case .spriteView:
      #if os(iOS)
      SpriteViewExampleView()
      #else
      Text("SpriteView not supported on Mac OS")
      #endif
    }
  }
}
