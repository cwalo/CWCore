//
//  GenericCache.swift
//  liner-notes
//
//  Created by Corey Walo on 8/1/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import Foundation

class GenericCache : NSCache<AnyObject, AnyObject> {
    static let shared = GenericCache()
}

extension GenericCache {
    subscript(key: String) -> AnyObject? {
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
