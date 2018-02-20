//
//  UIColor+Alpha.swift
//  liner-notes
//
//  Created by Corey Walo on 9/4/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import UIKit

public extension UIColor {
    public var halfAlpha: UIColor {
        return self.withAlphaComponent(0.5)
    }
}
