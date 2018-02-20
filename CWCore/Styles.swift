//
//  Styles.swift
//  liner-notes
//
//  Created by Corey Walo on 7/30/17.
//  Copyright © 2017 Corey Walo. All rights reserved.
//

import UIKit

public struct Styles {
    
    // MARK: Sizes
    public static let smallestImageSize: CGFloat = 24.0
    public static let smallImageSize: CGFloat = 42.0
    public static let mediumImageSize: CGFloat = 60.0
    public static let largeImageSize: CGFloat = 100.0
    public static let largestImageSize: CGFloat = 140.0
    
    public static let squareButtonHeight: CGFloat = 40.0
    public static let elementHeight: CGFloat = 30.0
    public static let elementWidth: CGFloat = 30.0
    public static let labelHeight: CGFloat = 40.0
    
    // MARK: Colors
    
    public static let black = UIColor(red: 26/255, green: 21/255, blue: 19/255, alpha: 1.0)
    public static let white = UIColor(red: 231/255, green: 226/255, blue: 221/255, alpha: 1.0)
    public static let blue = UIColor(red: 3/255, green: 165/255, blue: 185/255, alpha: 1.0)
    public static let blueGray = UIColor(red: 15/255, green: 54/255, blue: 73/255, alpha: 1.0)
    public static let darkBlue = UIColor(red: 0/255, green: 44/255, blue: 65/255, alpha: 1.0) // #002C41
    public static let red = UIColor(red: 254/255, green: 61/255, blue: 72/255, alpha: 1.0) // #FE3D48
    public static let darkRed = UIColor(red: 191/255, green: 46/255, blue: 53/255, alpha: 1.0)
    
    // MARK: Fonts
    // reference http://iosfonts.com
    public static let lightFontName = "AvenirNext-UltraLight"
    public static let regularFontName = "AvenirNext-Regular"
    public static let mediumFontName = "AvenirNext-Medium"
    
    public static let smallestFont = UIFont.font(ofSize: 12.0, weight: .regular)
    public static let smallFont = UIFont.font(ofSize: 14.0, weight: .regular)
    public static let smallMidweightFont = UIFont.font(ofSize: 14.0, weight: .medium)
    public static let mediumFont = UIFont.font(ofSize: 18.0, weight: .medium)
    public static let largeFont = UIFont.font(ofSize: 22.0, weight: .regular)
    public static let largerFont = UIFont.font(ofSize: 26.0, weight: .regular)
    public static let largestFont = UIFont.font(ofSize: 30.0, weight: .regular)
    
    // MARK: Margins
    public static let topMargin: CGFloat = 40.0
    public static let topMarginSmall: CGFloat = 20.0
    public static let sideMargin: CGFloat = 20.0
    public static let verticalSpace: CGFloat = 20.0
    public static let horizontalSpace: CGFloat = 15.0
}
