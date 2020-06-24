//
//  AppStorageExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//

import SwiftUI

struct AppStorageExampleView: View {
    @AppStorage("username") var username: String = "Anonymous"
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome, \(username)!")
            
            Button("Log in") {
                UserDefaults.standard.set("@tim_cook", forKey: "username")
            }
        }
        .navigationTitle("@AppStorage")
    }
}

struct AppStorageExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageExampleView()
    }
}
