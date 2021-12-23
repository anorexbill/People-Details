//
//  ScaledFont.swift
//  People Details
//
//  Created by Frimpong Anorchie II on 2021-12-22.
//

import Foundation
import SwiftUI

struct ScaledFont: ViewModifier {
    
    @Environment(\.sizeCategory) var sizeCategory
    
    var name: String
    var size: CGFloat

    func body(content: Content) -> some View {
       let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        return content.font(.custom(name, size: scaledSize))
    }
}

extension View {
    func scaledFont(name: String, size: CGFloat) -> some View {
        return self.modifier(ScaledFont(name: name, size: size))
    }
}
