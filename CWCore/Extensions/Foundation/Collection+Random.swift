//
//  Collection+Random.swift
//  liner-notes
//
//  Created by Corey Walo on 9/3/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import Foundation

extension Collection where Index == Int {
    func randomElement() -> Element? {
        return isEmpty ? nil : self[Int(arc4random_uniform(UInt32(count)))]
    }
}
