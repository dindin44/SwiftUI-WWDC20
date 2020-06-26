//
//  DateFormattingExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 26/06/2020.
//

import SwiftUI

struct DateFormattingExampleView: View {
    var body: some View {
        VStack(spacing: 50) {
            // Time Range
            Text(Date()...Date().addingTimeInterval(600))
            // Date
            Text(Date().addingTimeInterval(600), style: .date)
            // Time
            Text(Date().addingTimeInterval(600), style: .time)
            // relative times
            Text(Date().addingTimeInterval(600), style: .relative)
            // timer
            Text(Date().addingTimeInterval(600), style: .timer)
        }
        .padding(.horizontal)
        .navigationTitle("Date Formatting")
    }
}

struct DateFormatterExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DateFormattingExampleView()
    }
}
