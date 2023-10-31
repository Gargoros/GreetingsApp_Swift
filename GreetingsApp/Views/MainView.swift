//
//  MainView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 31.10.23.
//

import SwiftUI

// Portrait = Compact width, regular height (Doc SE)
// LandScape = Compact width, compact height (Doc SE)
// iPad = Regular width, regular height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
        if isPortraitPhone || isIPad{
            PortraitModeView()
        } else {
            LandscapeModeView()
        }

    }
}

#Preview {
    MainView()
}
