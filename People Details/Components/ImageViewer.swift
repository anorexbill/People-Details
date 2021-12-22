//
//  ImageViewer.swift
//  People Details
//
//  Created by Frimpong Anorchie II on 2021-12-22.
//

import Foundation
import SwiftUI
import SDWebImageSwiftUI

struct ImageViewer: View {
    
    
    private var url: String?
    private var indicator: Bool
    
    init(_ url: String?, indicator: Bool = false) {
        self.url = url
        self.indicator = indicator
    }
    
    var body: some View {
        if indicator {
            image
                .indicator(Indicator { _, _ in
                    ProgressView()
                })
                .transition(.fade(duration: 0.3))
            
        } else {
            image.transition(.fade(duration: 0.3))
        }
    }
    
    private var image: WebImage {
        WebImage(url: URL(string: url ?? ""))
            .resizable()
    }
}
