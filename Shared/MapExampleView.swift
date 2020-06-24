//
//  MapExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//

import SwiftUI
import MapKit

struct MapExampleView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.bottom)
            .navigationTitle("Map View")
    }
}

struct MapExampleView_Previews: PreviewProvider {
    static var previews: some View {
        MapExampleView()
    }
}
