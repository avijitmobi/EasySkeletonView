//
//  SkeletonHelper.swift
//  SkeletonView
//
//  Created by Avijit Babu on 08/04/20.
//  Copyright © 2020 Avijit Babu. All rights reserved.
//

import Foundation
import UIKit

public class SkeletonHelper {
    
    static func createGradientLayer(on frame : CGRect) -> CAGradientLayer{
        let grdLayer = CAGradientLayer()
        grdLayer.frame = frame
        grdLayer.startPoint = CGPoint(x: 0, y: 0.5)
        grdLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        grdLayer.locations = [0.25, 0.5, 0.75, 1.0]
        grdLayer.colors = [UIColor(red: 184/255, green: 184/255, blue: 184/255, alpha: 0.3).cgColor, UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 0.3).cgColor, UIColor(red: 184/255, green: 184/255, blue: 184/255, alpha: 0.3).cgColor]
        return grdLayer
    }
    
    static func addBoxes(x : CGFloat,offset : CGFloat,widthHeight : CGFloat,frame : UIBezierPath){
        let boxFr = UIBezierPath(roundedRect: CGRect(x: x, y: 10 + offset, width: widthHeight, height: widthHeight),cornerRadius: 10)
        frame.append(boxFr)
    }
    
    static func addCircle(x : CGFloat,offset : CGFloat,widthHeight : CGFloat,frame : UIBezierPath){
        let boxFr = UIBezierPath(roundedRect: CGRect(x: x, y: 10 + offset, width: widthHeight, height: widthHeight),cornerRadius: widthHeight/2)
        frame.append(boxFr)
    }
    
    static func addLines(numberOfLines: Int,x : CGFloat,lineGap : CGFloat, offset : CGFloat,width: CGFloat,height : CGFloat,frame : UIBezierPath){
        for i in 0..<numberOfLines{
            let y = (20 + offset + CGFloat(i*20))
            let lineFr = UIBezierPath(roundedRect: CGRect(x: x, y: y, width: width - CGFloat((i+1)*15), height: height),cornerRadius: 3)
            frame.append(lineFr)
        }
    }
}
