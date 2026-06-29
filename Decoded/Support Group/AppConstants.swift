//
//  AppConstants.swift
//  Decoded
//
//  Created by Anshuman Sharma on 29/06/26.
//

import Foundation
import SwiftUI

struct AppConstants {
    // MARK: - Brand Palette
    /// Warm orange used for accents: the logo mark, the "Decoded" accent word, and primary buttons.
    static let brandAccent = Color(hex: "F4581C")
    static let buttonOrange = Color(hex: "#ce6e3c")
    static let textColorWhite = Color(hex: "#fbfcfa")
    static let textColorBrown = Color(hex: "#242823")
    
    /// Warm peach for gradients and backgrounds
    static let laymanPeach = Color(red: 1.0, green: 0.82, blue: 0.64)
    /// Accent orange used for highlights, "made simple", CTA buttons
    static let laymanOrange = Color(red: 0.95, green: 0.55, blue: 0.22)
    /// Deep orange for gradient bottom
    static let laymanDeepOrange = Color(red: 0.92, green: 0.42, blue: 0.15)
    /// Welcome screen background gradient (peach → orange, top-to-bottom)
    static let welcomeGradient = LinearGradient(
        colors: [AppConstants.laymanPeach, AppConstants.laymanOrange, AppConstants.laymanDeepOrange], startPoint: .top, endPoint: .bottom
    )
    
    // MARK: - Spacing & Padding
    struct Spacing {
        // MARK: Extra Small
        static let xs2: CGFloat = 2
        static let xs4: CGFloat = 4
        static let xs6: CGFloat = 6
        static let xs8: CGFloat = 8
        
        // MARK: Small
        static let sm10: CGFloat = 10
        static let sm12: CGFloat = 12
        static let sm14: CGFloat = 14
        static let sm16: CGFloat = 16
        
        // MARK: Medium
        static let md20: CGFloat = 20
        static let md24: CGFloat = 24
        static let md28: CGFloat = 28
        static let md30: CGFloat = 30
        static let md32: CGFloat = 32
        
        // MARK: Large
        static let lg40: CGFloat = 40
        static let lg44: CGFloat = 44
        static let lg48: CGFloat = 48
        static let lg64: CGFloat = 64
        static let lg75: CGFloat = 75
        static let lg80: CGFloat = 80
        
        // MARK: Extra Large
        static let xl100: CGFloat = 100
        static let xl200: CGFloat = 200
        static let xl230: CGFloat = 230
        static let xl300: CGFloat = 300
        static let xl320: CGFloat = 320
        static let xl330: CGFloat = 330
        static let xl360: CGFloat = 360
        static let xl450: CGFloat = 450
        static let xl500: CGFloat = 500
        
        // MARK: Common Padding Values
        static let cardPadding: CGFloat = 16
        static let sectionPadding: CGFloat = 20
        static let buttonPadding: CGFloat = 12
        static let inputPadding: CGFloat = 8
        static let badgePadding: CGFloat = 6
    }
    
    // MARK: - Corner Radius
    struct CornerRadius {
        static let none: CGFloat = 0
        static let xs: CGFloat = 2
        static let xs2: CGFloat = 2
        static let sm: CGFloat = 4
        static let sm6: CGFloat = 6
        static let md: CGFloat = 6
        static let md12: CGFloat = 12
        static let lg: CGFloat = 8
        static let lg16: CGFloat = 16
        static let xl: CGFloat = 12
        static let xxl: CGFloat = 16
        static let xxxl: CGFloat = 20
    }
    
    // MARK: - Shadows
    struct Shadow {
        static let small = ShadowConfig(color: .black.opacity(0.05), radius: 10, x: 0, y: 5)
        static let medium = ShadowConfig(color: .black.opacity(0.1), radius: 15, x: 0, y: 8)
        static let large = ShadowConfig(color: .black.opacity(0.15), radius: 20, x: 0, y: 10)
        
        // MARK: Additional Shadow Properties
        static let radius: CGFloat = 10
        static let x: CGFloat = 0
        static let y: CGFloat = 5
    }
    
    // MARK: - Border Width
    struct BorderWidth {
        static let thin: CGFloat = 1
        static let normal: CGFloat = 2
        static let thick: CGFloat = 3
    }
    
    // MARK: - Font Sizes
    struct FontSize {
        static let microSmall: CGFloat = 8
        static let ultraSmall: CGFloat = 10
        static let normalSmall: CGFloat = 12
        static let exSmall: CGFloat = 13
        static let small: CGFloat = 14
        static let jumboSmall: CGFloat = 15
        static let regular: CGFloat = 16
        static let regularJumbo: CGFloat = 17
        static let large: CGFloat = 18
        static let larger: CGFloat = 20
        static let exLarger: CGFloat = 22
        static let maxLarge: CGFloat = 24
        static let huge: CGFloat = 26
        static let exHuge: CGFloat = 28
        static let jumboNormal: CGFloat = 30
        static let jumbo: CGFloat = 32
        static let extraJumbo: CGFloat = 36
        static let extraLargeJumbo: CGFloat = 40
        
        // MARK: Additional Font Sizes
        static let xs12: CGFloat = 12
        static let sm14: CGFloat = 14
        static let sm16: CGFloat = 16
        static let md18: CGFloat = 18
        static let md20: CGFloat = 20
        static let md28: CGFloat = 28
        static let lg30: CGFloat = 30
        static let lg32: CGFloat = 32
        static let xl48: CGFloat = 48
        static let xl52: CGFloat = 52
        
        // MARK: Table Font
        static let tableHeader: CGFloat = 16
        static let tableRow: CGFloat = 16
    }
    
    // MARK: - Heights
    struct Height {
        static let button: CGFloat = 38
        static let input: CGFloat = 44
        static let card: CGFloat = 202
        static let cardContainer: CGFloat = 230
        static let popup: CGFloat = 450
        static let popupWidth: CGFloat = 450
        
        // MARK: Additional Heights
        static let divider: CGFloat = 1
        static let xs8: CGFloat = 8
        static let sm16: CGFloat = 16
        static let sm20: CGFloat = 20
        static let md36: CGFloat = 36
        static let md42: CGFloat = 42
        static let lg40: CGFloat = 40
        static let lg44: CGFloat = 44
        static let lg56: CGFloat = 56
        static let xl300: CGFloat = 300
    }
    
    // MARK: - Widths
    struct Width {
        static let button: CGFloat = 70
        static let popup: CGFloat = 450
        static let maxContent: CGFloat = 500
        
        // MARK: Additional Widths
        static let xs8: CGFloat = 8
        static let sm14: CGFloat = 14
        static let sm16: CGFloat = 16
        static let md32: CGFloat = 32.0
        static let md38: CGFloat = 38
        static let md40: CGFloat = 40
        static let md56: CGFloat = 56
        static let md80: CGFloat = 80
        static let lg100: CGFloat = 127
        static let lg127: CGFloat = 127
        static let xl320: CGFloat = 320
        static let xl330: CGFloat = 330
        static let xl360: CGFloat = 360
    }

}

// MARK: - Shadow Configuration
struct ShadowConfig {
    let color: Color
    let radius: CGFloat
    let x: CGFloat
    let y: CGFloat
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)

        let r, g, b: UInt64

        switch hex.count {
        case 6:
            (r, g, b) = ((int >> 16) & 0xff,
                         (int >> 8) & 0xff,
                         int & 0xff)
        default:
            (r, g, b) = (1, 1, 1)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: 1
        )
    }
}
