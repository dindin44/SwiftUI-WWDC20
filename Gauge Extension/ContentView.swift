//
//  ContentView.swift
//  Gauge Extension
//
//  Created by Rob Sturgeon on 24/06/2020.
//

import SwiftUI

struct ContentView: View {
  @State var sliderValue = Double()
  
  var body: some View {
    VStack {
      Gauge(value: sliderValue, in: 0...1) {
        Text("Gauge")
      }
      .gaugeStyle(LinearGaugeStyle())
      //.gaugeStyle(LinearGaugeStyle())
      .cornerRadius(20)
      .frame(maxHeight: .infinity)
      Text("\(sliderValue)")
      Slider(value: $sliderValue, in: 0...1) {
        Text("Slider")
      }
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
