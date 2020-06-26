//
//  DatePickerExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//

import SwiftUI

struct DatePickerExampleView: View {
    @State private var date = Date()
    
    var body: some View {
        VStack {
            Text("Enter your birthday")
                .font(.largeTitle)
            DatePicker("Enter your birthday", selection: $date, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .frame(maxHeight: 400)
        }
        .navigationTitle("Date Picker")
    }
}

struct DatePickerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExampleView()
    }
}
