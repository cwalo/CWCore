//
//  UINavigationController+Direction.swift
//  liner-notes
//
//  Created by Corey Walo on 10/20/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import UIKit

public enum UINavigationDirection {
    case bottom
    case top
}

public extension UINavigationController {
    public func push(_ viewController: UIViewController, from direction: UINavigationDirection) {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionMoveIn
        transition.subtype = direction == .bottom ? kCATransitionFromTop : kCATransitionFromBottom // this is backwards intentionally
        view.layer.add(transition, forKey:kCATransition)
        pushViewController(viewController, animated: false)
    }
    
    public func pop(_ viewController: UIViewController, from direction: UINavigationDirection) {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionReveal
        transition.subtype = direction == .bottom ? kCATransitionFromTop : kCATransitionFromBottom
        view.layer.add(transition, forKey:kCATransition)
        popViewController(animated: false)
    }
    
    public func popTo(_ viewController: UIViewController, from direction: UINavigationDirection) {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionReveal
        transition.subtype = direction == .bottom ? kCATransitionFromTop : kCATransitionFromBottom
        view.layer.add(transition, forKey:kCATransition)
        popToViewController(viewController, animated: false)
    }
}
