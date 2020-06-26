//
//  ContentView.swift
//  Gauge Extension
//
//  Created by Rob Sturgeon on 24/06/2020.
//

import SwiftUI

struct ContentView: View {
  @State var isCircular = false
  @State var sliderValue = Double()
  var body: some View {
    VStack {
      Toggle(isOn: $isCircular) {
        Text("Circular")
      }
      if isCircular {
        GaugeView(sliderValue: sliderValue)
        .gaugeStyle(CircularGaugeStyle())
      }
      else {
        GaugeView(sliderValue: sliderValue)
        .gaugeStyle(LinearGaugeStyle())
      }
      Text("\(sliderValue)")
      Slider(value: $sliderValue, in: 0...1) {
        Text("Slider")
      }
    }
    .padding()
  }
}

struct GaugeView: View {
  let sliderValue: Double
  var body: some View {
    VStack {
      Gauge(value: sliderValue, in: 0...1) {
        Text("Gauge")
      }
      .frame(maxHeight: .infinity)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
