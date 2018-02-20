//
//  String+Localized.swift
//  liner-notes
//
//  Created by Corey Walo on 7/30/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import Foundation

public extension String {
    public var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
