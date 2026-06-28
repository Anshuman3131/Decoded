//
//  CustomFonts.swift
//  Decoded
//
//  Created by Anshuman Sharma on 26/06/26.
//

import SwiftUI

enum PoppinsFont: String {
    case bold = "Poppins-Bold"
    case boldItalic = "Poppins-BoldItalic"
    case italic = "Poppins-Italic"
    case light = "Poppins-Light"
    case lightItalic = "Poppins-LightItalic"
    case medium = "Poppins-Medium"
    case mediumItalic = "Poppins-MediumItalic"
    case regular = "Poppins-Regular"
    case semibold = "Poppins-SemiBold"
    case extraBold = "Poppins-ExtraBold"
    case semiboldItalic = "Poppins-SemiBoldItalic"
    case thin = "Poppins-Thin"
    case thinItalic = "Poppins-ThinItalic"
}

extension Font {
    static func poppins(_ style: PoppinsFont, size: CGFloat) -> Font {
        return Font.custom(style.rawValue, size: size)
    }
}


/// FontType enum for all Style of font
enum FontType: String {
    case none = ""
    case regular = "Regular"
    case bold = "Bold"
    case semiBold = "SemiBold"
    case thin = "Thin"
}

/// FontSize enum for list down all case the fontsize of our SDK use
public enum FontSize: CGFloat {
    case microSmall = 8
    case ultraSmall = 10
    case normalSmall = 12
    case exSmall = 13
    case small = 14
    case jumboSmall = 15
    case regular = 16
    case regularJumbo = 17
    case large = 18
    case larger = 20
    case exLarger = 22
    case maxLarge = 24
    case huge = 26
    case exHuge = 28
    case jumboNormal = 30
    case jumbo = 32
    case extraJumbo = 36
    case extraLargeJumbo = 40
}


