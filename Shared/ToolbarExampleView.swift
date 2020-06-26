//
//  ToolbarExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//

import SwiftUI

struct ToolbarExampleView: View {
    @State private var books:[Book] = [
        Book(),
        Book(),
        Book(),
        Book(),
        Book(),
        Book()
    ]
    
    var body: some View {
        List(books) { book in
            Text("Book Detail")
        }
        .navigationTitle("Toolbar")
//        .toolbar {
//            ToolbarItem(placement: .navigationBarTrailing) {
//                Button(action: addBook) {
//                    Label("Add", systemImage: "plus")
//                }
//            }
//            ToolbarItem(placement: .bottomBar) {
//                Button(action: removeBook) {
//                    Label("Remove", systemImage: "trash")
//                }
//            }
//        }
    }
    
    private func addBook() {
        withAnimation {
            books.append(Book())
        }
    }
    
    private func removeBook() {
        guard !books.isEmpty else { return }
        
        _ = withAnimation {
            books.removeLast()
        }
    }
}

struct ToolbarExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ToolbarExampleView()
        }
    }
}

struct Book: Identifiable {
    let id = UUID()
    let text = "Book Text"
}
