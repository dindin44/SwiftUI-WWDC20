//
//  StateObjectExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//
//  https://www.donnywals.com/whats-the-difference-between-stateobject-and-observedobject/


import SwiftUI

class DataSource: ObservableObject {
    @Published var counter = 0
}

struct Counter: View {
    @StateObject var dataSource = DataSource()
    
    var body: some View {
        VStack {
            Button("Increment counter") {
                dataSource.counter += 1
            }
            
            Text("Count is \(dataSource.counter)")
        }
    }
}

struct StateObjectExampleView: View {
    @State private var items = ["hello", "world"]
    
    var body: some View {
        VStack {
            Button("Append item to list") {
                items.append("test")
            }
            
            List(items, id: \.self) { name in
                Text(name)
            }
            
            Counter()
        }
        .navigationTitle("@StateObject")
    }
}

struct StateObjectExampleView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectExampleView()
    }
}
