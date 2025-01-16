//
//  Extension+View.swift
//  ResponsiveSize
//
//  Created by differenz148 on 09/01/25.
//

import SwiftUI

public extension View {
    
    /**
     Responsive Font Size with System Font
     */
    func responsiveFontSize(_ baseFontSize: CGFloat) -> some View {
        self.font(.system(size: ResponsiveHelper.shared.scaledFontSize(baseFontSize)))
    }
        
    /**
     Responsive Font Size with Dynamic Font
     */
    func responsiveFontSize(_ baseFontSize: CGFloat, fontName: String) -> some View {
        let scaledFontSize = ResponsiveHelper.shared.scaledFontSize(baseFontSize)
        
        // Create a UIFont with the custom font and apply Dynamic Type
        let dynamicFont = UIFont.preferredFont(forTextStyle: .body)
        let font = UIFont(name: fontName, size: scaledFontSize) ?? dynamicFont
            
        // Use the scaled custom font while respecting Dynamic Type
        return self.font(.custom(font.fontName, size: scaledFontSize))
            .lineLimit(nil)
    }
    
    /**
     Responsive Frame
     */
    func responsiveFrame(width baseWidth: CGFloat, height baseHeight: CGFloat) -> some View {
        self.frame(
            width: ResponsiveHelper.shared.scaleDimension(baseWidth),
            height: ResponsiveHelper.shared.scaleDimension(baseHeight, useHeightScale: true)
        )
    }
    
    /**
     Responsive Square
     */
    func responsiveSquare(size baseSize: CGFloat) -> some View {
        let scale = min(ResponsiveHelper.shared.widthScale, ResponsiveHelper.shared.heightScale)
        return self.frame(
            width: baseSize * scale,
            height: baseSize * scale
        )
    }
    
    /**
     Responsive Padding
     */
    func responsivePadding(_ basePadding: CGFloat) -> some View {
        self.padding(ResponsiveHelper.shared.scaleDimension(basePadding))
    }
    
    /**
     Responsive Corner Radius
     */
    func responsiveCornerRadius(_ baseRadius: CGFloat) -> some View {
        self.cornerRadius(ResponsiveHelper.shared.scaleDimension(baseRadius))
    }
    
    /**
     Adding a responsiveLineSpacing Function
     - For text-heavy views, responsive line spacing can enhance readability.
     */
    func responsiveLineSpacing(_ baseLineSpacing: CGFloat) -> some View {
        self.lineSpacing(ResponsiveHelper.shared.scaleDimension(baseLineSpacing))
    }
    
    /**
     Adding responsiveShadow for Shadows
     - Shadows can also be scaled to match the design proportionally.
     */
    func responsiveShadow(color: Color, radius baseRadius: CGFloat, x baseX: CGFloat, y baseY: CGFloat) -> some View {
        self.shadow(
            color: color,
            radius: ResponsiveHelper.shared.scaleDimension(baseRadius),
            x: ResponsiveHelper.shared.scaleDimension(baseX),
            y: ResponsiveHelper.shared.scaleDimension(baseY)
        )
    }
    
    /**
     Adding responsiveBorder
     - To scale borders proportionally/
     */
    func responsiveBorder(_ color: Color, width baseWidth: CGFloat) -> some View {
        self.border(color, width: ResponsiveHelper.shared.scaleDimension(baseWidth))
    }
    
    /**
     Adding responsiveOffset
     - For views requiring precise placement adjustments.
     */
    func responsiveOffset(x baseX: CGFloat, y baseY: CGFloat) -> some View {
        self.offset(
            x: ResponsiveHelper.shared.scaleDimension(baseX),
            y: ResponsiveHelper.shared.scaleDimension(baseY)
        )
    }
    
    /**
     Adding responsiveOpacity
     - Sometimes, you might want to adjust the opacity based on screen size.
     */
    func responsiveOpacity(baseValue: CGFloat, largeDeviceMultiplier: CGFloat = 1.0) -> some View {
        let multiplier = UIDevice.current.userInterfaceIdiom == .pad ? largeDeviceMultiplier : 1.0
        return self.opacity(baseValue * multiplier)
    }
    
    /**
     Adding responsiveGradient
     - For applying gradients that scale properly.
     */
    func responsiveGradient(colors: [Color], startPoint: UnitPoint, endPoint: UnitPoint, baseRadius: CGFloat) -> some View {
        self.overlay(
            LinearGradient(
                gradient: Gradient(colors: colors),
                startPoint: startPoint,
                endPoint: endPoint
            )
            .mask(self)
            .cornerRadius(ResponsiveHelper.shared.scaleDimension(baseRadius))
        )
    }
    
    /**
     Flexible View Modifier for Containers
     - You can include a flexible layout for containers like HStack, VStack, or ZStack.
     */
    func responsiveContainerPadding(_ basePadding: CGFloat) -> some View {
        self.padding(ResponsiveHelper.shared.scaleDimension(basePadding))
    }
    
    /**
     Dynamic Spacing Between Elements
     - cing between elements is another common need.
     */
    func responsiveSpacing(_ baseSpacing: CGFloat) -> some View {
        self.padding(.all, ResponsiveHelper.shared.scaleDimension(baseSpacing))
    }
}
