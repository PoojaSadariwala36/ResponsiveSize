//
//  ResponsiveHelper.swift
//  ResponsiveSize
//
//  Created by Pooja Sadariwala on 09/01/25.
//

import SwiftUI

@MainActor
public class ResponsiveHelper {
    public static let shared = ResponsiveHelper()

    private var baseWidth: CGFloat = 375.0  // Reference width (e.g., iPhone 12/13/14)
    private var baseHeight: CGFloat = 812.0 // Reference height (e.g., iPhone 12/13/14)

    public func configure(baseWidth: CGFloat = 375.0, baseHeight: CGFloat = 812.0) {
        self.baseWidth = baseWidth
        self.baseHeight = baseHeight
    }
    
    private var screenWidth: CGFloat {
        UIScreen.main.bounds.width
    }

    private var screenHeight: CGFloat {
        UIScreen.main.bounds.height
    }

    // Separate scaling factors for width, height, and fonts
    public var widthScale: CGFloat {
        // Check if the device is an iPad and apply custom scaling logic
        if UIDevice.current.userInterfaceIdiom == .pad {
            return screenWidth / baseWidth * 0.8 // Adjust scaling for iPads
        }
        return screenWidth / baseWidth
    }

    public var heightScale: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return screenHeight / baseHeight * 0.8 // Adjust scaling for iPads
        }
        return screenHeight / baseHeight
    }

    public var fontScale: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return min(widthScale, heightScale) * 0.9 // Slightly smaller font scaling for iPads
        }
        return min(widthScale, heightScale)
    }

    // General scaling for dimensions
    public func scaleDimension(_ baseDimension: CGFloat, useHeightScale: Bool = false) -> CGFloat {
        return baseDimension * (useHeightScale ? heightScale : widthScale)
    }

    // Font size scaling
    public func scaledFontSize(_ baseFontSize: CGFloat) -> CGFloat {
        return baseFontSize * fontScale
    }
}
