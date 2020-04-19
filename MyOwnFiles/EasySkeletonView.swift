//
//  EasySkeletonView.swift
//  SkeletonView
//
//  Created by Avijit Babu on 08/04/20.
//  Copyright © 2020 Avijit Babu. All rights reserved.
//

import Foundation
import UIKit


public class EasySkeletonView: NSObject {
    
    private var onView = UIView()
    private var skeletonView = UIView()
    public var gapOfList : CGFloat = 0
    public var gapBackgroundColor : UIColor = .lightGray
    public var numOfList : Int?
    public var numberOfLines : Int = 2
    public var gradientSpeed : CFTimeInterval = 1
    public var maximumGridItems : Int = 5
    public var isAnimationNeed : Bool = true
    public var eachItemHeight : CGFloat = 90
    public var backGroundColor = UIColor.clear
    public var skStyle : SkeletonStyle = .listWithCircularImage
    
    public init(on : UIView,style  : SkeletonStyle) {
        onView = on
        skStyle = style
    }
    
    public func startAnimating(){
        let viewHeight = onView.frame.height
        let itemHeight:CGFloat = eachItemHeight
        var numberOfItems : Int{
            let max = Int(viewHeight / eachItemHeight) + 1
            if max < (numOfList ?? max){
                return max
            }else{
                return (numOfList ?? max)
            }
        }
        let skeletonViewHeight = itemHeight * CGFloat(numberOfItems)
        skeletonView.frame = CGRect(x: 0, y: 0, width: onView.frame.width, height: skeletonViewHeight)
        let grd = SkeletonHelper.createGradientLayer(on: skeletonView.frame)
        skeletonView.layer.addSublayer(grd)
        grd.addGradAnim(speed: gradientSpeed)
        let skeletonPath = UIBezierPath()
        for i in 0...numberOfItems {
            let offset = CGFloat(i) * itemHeight
            if skStyle == .listWithCircularImage || skStyle == .listWithSquareImg{
                if skStyle == .listWithCircularImage{
                    SkeletonHelper.addCircle(x: 10, offset: offset, widthHeight: eachItemHeight-20, frame: skeletonPath)
                }else{
                    SkeletonHelper.addBoxes(x: 10, offset: offset, widthHeight: eachItemHeight-20, frame: skeletonPath)
                }
                var lines : CGFloat{
                    let max = (eachItemHeight-20)/20 + 1
                    if max < CGFloat(numberOfLines){
                        return max
                    }else{
                        return CGFloat(numberOfLines)
                    }
                }
                SkeletonHelper.addLines(numberOfLines: Int(lines), x: eachItemHeight, lineGap: 10, offset: offset, width: self.onView.frame.width - eachItemHeight, height: 10, frame: skeletonPath)
            }else if skStyle == .gridCircle || skStyle == .gridSquare{
                var itemsMax : CGFloat{
                    let max = (self.onView.frame.width)/(eachItemHeight - 10) + 1
                    if max < CGFloat(maximumGridItems){
                        return max
                    }else{
                        return CGFloat(maximumGridItems)
                    }
                }
                for i in 0..<Int(itemsMax){
                    if skStyle == .gridCircle{
                        SkeletonHelper.addCircle(x: 10 + (CGFloat(i)*(eachItemHeight-10)), offset: offset, widthHeight: eachItemHeight-20, frame: skeletonPath)
                    }else{
                        SkeletonHelper.addBoxes(x: 10 + (CGFloat(i)*(eachItemHeight-10)), offset: offset, widthHeight: eachItemHeight-20, frame: skeletonPath)
                    }
                }
            }
            if gapOfList != 0{
                let gap = UIView(frame: CGRect(x: 0, y: (itemHeight - gapOfList) + offset, width: onView.frame.width, height: gapOfList))
                gap.backgroundColor = gapBackgroundColor
                skeletonView.addSubview(gap)
            }
        }
        if #available(iOS 13.0, *) {
            grd.addMask(with: UITraitCollection.current.userInterfaceStyle == .dark ? .black : .white, on: skeletonPath, of: skeletonView)
        } else {
            grd.addMask(with: .white, on: skeletonPath, of: skeletonView)
        }
        skeletonView.backgroundColor = backGroundColor
        if !skeletonView.isDescendant(of: onView) {
            if isAnimationNeed{
                UIView.transition(with: self.onView, duration: 0.5, options: [.transitionCrossDissolve], animations: {
                    self.onView.addSubview(self.skeletonView)
                }, completion: nil)
            }else{
                self.onView.addSubview(self.skeletonView)
            }
        }
    }
    
    public func stopAnimating(){
        if skeletonView.isDescendant(of: onView) {
            if isAnimationNeed{
                UIView.transition(with: self.onView, duration: 0.5, options: [.transitionCrossDissolve], animations: {
                    self.skeletonView.removeFromSuperview()
                    self.skeletonView = UIView()
                }, completion: nil)
            }else{
                self.skeletonView.removeFromSuperview()
                self.skeletonView = UIView()
            }
        }
    }
    
}
