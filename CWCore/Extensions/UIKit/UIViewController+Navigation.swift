//
//  UIViewController+Navigation.swift
//  liner-notes
//
//  Created by Corey Walo on 10/20/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import UIKit

extension UIViewController {
    @objc func popFromTop() {
        navigationController?.pop(self, from: .top)
    }
    
    func present(_ viewController: UIViewController, from direction: UINavigationDirection = .top) {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionPush
        transition.subtype = direction == .bottom ? kCATransitionFromTop : kCATransitionFromBottom // this is backwards intentionally
        view.window!.layer.add(transition, forKey:kCATransition) // view.window.layer is the key here
        present(viewController, animated: false, completion: nil)
    }
    
    func dismiss(from direction: UINavigationDirection = .bottom, completion: (() -> Void)? ) {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionPush
        transition.subtype = direction == .bottom ? kCATransitionFromTop : kCATransitionFromBottom // this is backwards intentionally
        view.window!.layer.add(transition, forKey:kCATransition)
        dismiss(animated: false) {
            completion?()
        }
    }
}
