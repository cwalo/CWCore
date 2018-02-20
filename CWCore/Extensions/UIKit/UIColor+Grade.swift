//
//  UIColor+Grade.swift
//  liner-notes
//
//  Created by Corey Walo on 10/22/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import UIKit

extension UIColor {
    class func gradedColor(from: UIColor, to: UIColor, numSteps: Int, at step: Int) -> UIColor {
        let fromColorComponents = from.cgColor.components!
        let fromRed = fromColorComponents[0]
        let fromGreen = fromColorComponents[1]
        let fromBlue = fromColorComponents[2]
        let fromAlpha = fromColorComponents[3]
        
        let toColorComponents = to.cgColor.components!
        let toRed = toColorComponents[0]
        let toGreen = toColorComponents[1]
        let toBlue = toColorComponents[2]
        let toAlpha = toColorComponents[3]
        
        let red = UIColor.component(from: fromRed, to: toRed, steps: numSteps, at: step)
        let green = UIColor.component(from: fromGreen, to: toGreen, steps: numSteps, at: step)
        let blue = UIColor.component(from: fromBlue, to: toBlue, steps: numSteps, at: step)
        let alpha = UIColor.component(from: fromAlpha, to: toAlpha, steps: numSteps, at: step)
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    private class func component(from: CGFloat, to: CGFloat, steps: Int, at step: Int) -> CGFloat {
        let constant = ((from - to) / CGFloat(steps))
        return to + (constant * CGFloat(step))
    }
}
