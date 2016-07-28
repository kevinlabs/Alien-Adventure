//
//  SpecialBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//  Udacity Editor - Student Signature.
//  Code Signature.
//  3960c466b6e28ebeeaf7d8bbfb464ecf

import SpriteKit

class SpecialBadge: Badge {
    
    enum BadgeAnimation: Int {
        case GrowAndShrink = 0, Rotate = 1, Shake = 2
    }
    
    override init(requestType: UDRequestType) {
        super.init(requestType: requestType)
        self.texture = SKTexture(imageNamed: "BadgeTeal")
        
        let AniChoice = BadgeAnimation(rawValue: Int(arc4random_uniform(3)))!
        
        switch AniChoice {
        case .GrowAndShrink:
            growAndShrink()
        case .Rotate:
            rotate()
        case .Shake:
            shake()
        }
        
    }
    
    func growAndShrink() {
        let action1 = SKAction.scaleTo(0.8, duration: 1.0)
        let action2 = SKAction.scaleTo(1.1, duration: 1.0)
        let sequencedAction = SKAction.sequence([action1, action2])
        runAction(SKAction.repeatActionForever(sequencedAction))
    }
    
    func rotate() {
        let action = SKAction.rotateByAngle(CGFloat(-M_PI), duration: 1.5)
        runAction(SKAction.repeatActionForever(action))
    }
    
    func shake() {
        let x: Float = 10
        let y: Float = 6
        let numberOfTimes = 2.0 / 0.04
        var actionsArray = [SKAction]()
        
        for _ in 1...Int(numberOfTimes) {
            let dX = Float(arc4random_uniform(UInt32(x))) - x / 2
            let dY = Float(arc4random_uniform(UInt32(y))) - y / 2
            let action = SKAction.moveByX(CGFloat(dX), y: CGFloat(dY), duration: 0.02)
            actionsArray.append(action)
            actionsArray.append(action.reversedAction())
        }
        
        let sequencedAction = SKAction.sequence(actionsArray)
        runAction(SKAction.repeatActionForever(sequencedAction))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}