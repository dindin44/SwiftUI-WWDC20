//
//  ListChildrenExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//

import SwiftUI

struct ListChildrenExampleView: View {
    private struct Parent: Identifiable {
        var id = UUID()
        var name = ""
        var children: [Parent]?
    }
    
    private var parents: [Parent] = [
        Parent(name:"Mark", children: [Parent(name: "Paola")]),
        Parent(name:"Rodrigo", children: [Parent(name: "Kai"), Parent(name: "Easton")]),
        Parent(name:"Marcella", children: [Parent(name: "Sam"), Parent(name: "Melissa"), Parent(name: "Melanie")]),
        Parent(name: "Moe")
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("You can arrange your data to allow the List View to show it in an outline style")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .foregroundColor(.black)
            
            List(parents, children: \.children) { parent in
                Text("\(parent.name)")
            }
        }
        .font(.title)
        .navigationTitle("List Children")
    }
}

struct ListChildrenExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ListChildrenExampleView()
    }
}
