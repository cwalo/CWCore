//
//  ImageCache.swift
//  liner-notes
//
//  Created by Corey Walo on 6/29/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import UIKit

public class ImageCache : NSCache<AnyObject, UIImage> {
    public static let shared = ImageCache()
}

public extension ImageCache {
    public subscript(key: String) -> UIImage? {
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
