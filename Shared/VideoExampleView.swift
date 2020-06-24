//
//  VideoExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//

import SwiftUI
import AVKit

struct VideoExampleView: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url:  URL(string: "https://bit.ly/swswift")!)) {
            VStack {
                Text("Watermark")
                    .font(.caption)
                    .foregroundColor(.white)
                    .background(Color.black.opacity(0.7))
                    .clipShape(Capsule())
                Spacer()
            }
        }
        .navigationTitle("Video Player")
    }
}

struct VideoExampleView_Previews: PreviewProvider {
    static var previews: some View {
        VideoExampleView()
    }
}
