//
//  ImageCache.swift
//  liner-notes
//
//  Created by Corey Walo on 6/29/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import UIKit

class ImageCache : NSCache<AnyObject, UIImage> {
    static let shared = ImageCache()
}

extension ImageCache {
    subscript(key: String) -> UIImage? {
        get {
            return object(forKey: key as AnyObject)
        }
        set {
            if let newValue = newValue {
                setObject(newValue, forKey: key as AnyObject)
            }
            else {
                removeObject(forKey: key as AnyObject)
            }
        }
    }
}
