//
//  GridExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//
//  SwiftUI’s LazyVGrid and LazyHGrid give us grid layouts with a fair amount of flexibility, but they are available only for iOS 14 or later
//
//  The simplest possible grid is made up of three things: your raw data, an array of GridItems describing the layout you want, and either a LazyVGrid or a LazyHGrid that brings together your data and your layout.

import SwiftUI

struct GridExampleView: View {
    private  let emojis = [
        "😀","😃","😄","😁","😆","😅",
        "😂","🤣","☺️","😊","😇","🙂",
        "🙃","😉","😌","😍","🥰","😘",
        "😗","😙","😋","😛","😝","😜",
        "🤪","🤨","🧐","🤓","😎","🤩",
        "🥳","😏","😒","😞","😔","😟",
        "🙁","☹️","😣","😖","😫","😩",
        "🥺","😢","😭","😤","😠","😡"
    ]
    
    // If you wanted to control the number of rows/columns you can use .flexible(), which also lets you specify how big each item should be but now lets you control how many rows/columns there are.
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(emojis, id: \.self) { emoji in
                        Text(emoji)
                            .font(.largeTitle)
                    }
                }
            }
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 50) {
                    ForEach(emojis, id: \.self) { emoji in
                        Text(emoji)
                            .font(.largeTitle)
                    }
                }
            }
        }
        .navigationTitle("Lazy Grids")
    }
}

struct GridExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GridExampleView()
        }
    }
}

