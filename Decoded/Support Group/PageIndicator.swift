//
//  PageIndicator.swift
//  Decoded
//
//  Created by Anshuman Sharma on 28/06/26.
//

import SwiftUI

struct PageIndicator: View {
    let numberofpges: Int
    let currentPage: Int
    let activePageColor: Color = .red
    let inactivePageColor: Color = .white
    let dotSize: CGFloat = 8
    
    var body: some View {
        HStack{
            ForEach(0..<numberofpges, id: \.self) { page in
                Circle()
                    .fill(page == currentPage ? activePageColor : inactivePageColor)
                    .frame(width: dotSize, height: dotSize)
                    .animation(.easeInOut(duration: 0.3), value: currentPage)
                    
            }
        }
        .padding()
    }
}

#Preview {
    PageIndicator(numberofpges: 5, currentPage: 0)
}
