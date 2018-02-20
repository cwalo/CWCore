//
//  UIFont+Styles.swift
//  liner-notes
//
//  Created by Corey Walo on 10/25/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import UIKit

extension UIFont {
    class func font(ofSize: CGFloat, weight: Weight) -> UIFont {
        var font: UIFont?
        
        if weight == UIFont.Weight.light {
            font = UIFont(name: Styles.lightFontName, size: ofSize)
        } else if weight == UIFont.Weight.regular {
            font = UIFont(name: Styles.regularFontName, size: ofSize) ?? UIFont.systemFont(ofSize: ofSize, weight: weight)
        } else if weight == UIFont.Weight.medium {
            font = UIFont(name: Styles.mediumFontName, size: ofSize) ?? UIFont.systemFont(ofSize: ofSize, weight: weight)
        }
        
        return font ?? UIFont.systemFont(ofSize: ofSize, weight: weight)
    }
}

