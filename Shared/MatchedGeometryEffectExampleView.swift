//
//  MatchedGeometryEffectExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Dinesh Vijaykumar on 24/06/2020.
//
// If you have the same view appearing in two different parts of your view hierarchy and want to animate between them – for example, going from a list view to a zoomed detail view – then you should use SwiftUI’s matchedGeometryEffect() modifier

import SwiftUI

struct MatchedGeometryEffectExampleView: View {
    @Namespace private var animation
    @State private var isZoomed = false
    
    var frame: CGFloat {
        isZoomed ? 300 : 44
    }
    
    var body: some View {
        VStack {
            Text("Tap on the text below")
                .font(.title)
            
            Spacer()
            
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(width: frame, height: frame)
                        .padding(.top, isZoomed ? 20 : 0)
                    
                    if isZoomed == false {
                        Text("Taylor Swift – 1989")
                            .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                            .font(.headline)
                        Spacer()
                    }
                }
                
                if isZoomed == true {
                    Text("Taylor Swift – 1989")
                        .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                        .font(.headline)
                        .padding(.bottom, 60)
                    Spacer()
                }
            }
            .onTapGesture {
                withAnimation(.spring()) {
                    self.isZoomed.toggle()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: isZoomed ? 400 : 60)
            .background(Color(white: 0.9))
        }
        .navigationTitle("MatchedGeometryEffect")
    }
}

struct MatchedGeometryEffectExampleView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffectExampleView()
    }
}
