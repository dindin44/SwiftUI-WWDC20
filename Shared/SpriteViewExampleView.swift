//
//  SpriteViewExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Rob Sturgeon on 28/06/2020.
//

import SwiftUI
import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let box = SKSpriteNode(color: UIColor.red, size: CGSize(width: 50, height: 50))
        box.position = location
        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
        addChild(box)
    }
}
struct SpriteViewExampleView: View {
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: 300, height: 400)
        scene.scaleMode = .fill
        return scene
    }
@ViewBuilder
    var body: some View {
      #if os(macOS)
      Text("Only available in Mac Catalyst")
      #else
      SpriteView(scene: scene)
          .frame(width: 300, height: 400)
          .edgesIgnoringSafeArea(.all)
      #endif
    }
}

struct SpriteViewExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SpriteViewExampleView()
    }
}
