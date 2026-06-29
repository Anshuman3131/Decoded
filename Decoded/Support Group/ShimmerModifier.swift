//
//  shimmer.swift
//  Decoded
//
//  Created by Anshuman Sharma on 29/06/26.
//

import Foundation
import SwiftUI
// MARK: - Shimmering Extension
extension View {
    func shimmering(duration: Double = 1.0) -> some View {
        self.modifier(ShimmerModifier(duration: duration))
    }
}

struct ShimmerModifier: ViewModifier {
    let duration: Double
    @State private var phase: CGFloat = 0
    
    func body(content: Content) -> some View {
        content
            .overlay(
                GeometryReader { geometry in
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.clear,
                            Color.white.opacity(0.6),
                            Color.clear
                        ]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .frame(width: geometry.size.width * 2)
                    .offset(x: -geometry.size.width + (geometry.size.width * 2) * phase)
                    .animation(
                        Animation.linear(duration: duration)
                            .repeatForever(autoreverses: false),
                        value: phase
                    )
                }
            )
            .onAppear {
                phase = 1
            }
    }
}
