//
//  Color.swift
//  Decoded
//
//  Created by Anshuman Sharma on 28/06/26.
//

import Foundation
import SwiftUI

extension Color {

    // MARK: - Brand Palette
    /// Warm orange used for accents: the logo mark, the "Decoded" accent word, and primary buttons.
    static let brandAccent = Color(hex: "F4581C")
    static let textColor = Color(hex: "#fbfcfa")

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
