//
//  Extensions.swift
//  SkeletonView
//
//  Created by Avijit Babu on 08/04/20.
//  Copyright © 2020 Avijit Babu. All rights reserved.
//


import Foundation
import UIKit

//MARK: - Add Gradient Animation -
extension CALayer{
    
    func addGradAnim(speed : CFTimeInterval){
        let addAnimation = CABasicAnimation(keyPath: "locations")
        addAnimation.fromValue = [0.0, 0.0, 0.25]
        addAnimation.toValue = [0.65, 1.0, 1.0]
        addAnimation.duration = speed
        addAnimation.repeatCount = .greatestFiniteMagnitude
        addAnimation.fillMode = CAMediaTimingFillMode.forwards
        addAnimation.isRemovedOnCompletion = false
        self.add(addAnimation, forKey: nil)
    }
}

//MARK: - Add Mask -
extension CAGradientLayer{
    
    func addMask(with color : UIColor, on frame : UIBezierPath, of view : UIView){
        let skeletonShape = CAShapeLayer()
        skeletonShape.path = frame.cgPath
        skeletonShape.fillColor = color.cgColor
        skeletonShape.frame = view.frame
        self.mask = skeletonShape
    }
    
}

extension UIBezierPath {
    
    func addFrame(){
        
    }
}

