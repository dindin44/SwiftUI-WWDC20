//
//  ToolbarExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//

import SwiftUI
#if os(macOS)
struct ToolbarExampleView: View {
  var body: some View {
    Text("Toolbar is currently unavailable in MacOS, despite the fact that it is declared as @available(iOS 14.0, OSX 10.16, tvOS 14.0, watchOS 7.0, *) by Apple, and the deployment target of this project is 10.16. It will be added when this bug is fixed.")
      .lineLimit(nil)
  }
}
#elseif os(iOS)
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
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: addBook) {
                    Label("Add", systemImage: "plus")
                }
            }
            ToolbarItem(placement: .bottomBar) {
                Button(action: removeBook) {
                    Label("Remove", systemImage: "trash")
                }
            }
        }
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
#endif
