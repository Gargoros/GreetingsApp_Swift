//
//  MainView.swift
//  Greetings-App-Mac
//
//  Created by MIKHAIL ZHACHKO on 1.11.23.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var body: some View {
        NavigationStack{
            PortraitModeView()
                .toolbar{
                    ToolbarItem(placement: .navigation){
                        LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                    }
                }
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
