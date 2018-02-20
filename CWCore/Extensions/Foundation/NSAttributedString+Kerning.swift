//
//  NSAttributedString+Kerning.swift
//  liner-notes
//
//  Created by Corey Walo on 10/26/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import UIKit

extension NSMutableAttributedString {
    func addLetterSpacing(_ spacing: CGFloat = 1.0) -> NSAttributedString {
        addAttribute(NSAttributedStringKey.kern, value: spacing, range: NSRange(location: 0, length: self.length - 1)) // no space after last character
        return self
    }
}
