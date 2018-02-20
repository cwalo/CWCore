//
//  UICollectionView+LastIndexPath.swift
//  liner-notes
//
//  Created by Corey Walo on 10/24/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import UIKit

extension UICollectionView {
    var indexPathForLastItem: IndexPath? {
        let lastSection = numberOfSections > 0 ? numberOfSections - 1 : 0
        guard lastSection > 0, numberOfItems(inSection: 0) > 0 else { return nil }
        return IndexPath(item: numberOfItems(inSection: 0) - 1, section: 0)
    }
}
