//
//  UIImageView+URL.swift
//  liner-notes
//
//  Created by Corey Walo on 6/29/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import UIKit

public extension UIImageView {
    /** Asynchronously set the imageView with an image URL. Backed by shared instance of ImageCache by default */
    public func setWith(imageURL: URL, placeholder: UIImage? = nil, useCachedImage: Bool = true, animated: Bool = true) {
        
        func setWith(_ image: UIImage) {
            DispatchQueue.main.async {
                UIView.animate(withDuration: animated ? 0.2 : 0.0, animations: {
                    self.image = image
                })
            }
        }
        
        if useCachedImage {
            if let cachedImage = ImageCache.shared[imageURL.absoluteString] {
                setWith(cachedImage)
                return
            }
        }
        
        if let placeholder = placeholder {
            image = placeholder
        }
        
        _ = URLSession.shared.dataTask(with: imageURL) { data, response, error in
            if let error = error { print("Error setting image view with URL: \(imageURL) - \(error)")}
            
            if let data = data {
                if let downloadedImage = UIImage(data: data) {
                    ImageCache.shared[imageURL.absoluteString] = downloadedImage
                    setWith(downloadedImage)
                }
            }
        }.resume()
    }
}
