//
//  LanguageOptionsView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 31.10.23.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        
        Menu {
            Button(LocalizedStringKey("English")) {
                language = "en"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            Button(LocalizedStringKey("Russian")) {
                language = "ru"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            Button(LocalizedStringKey("Belarusian")) {
                language = "be-BY"
                layoutDirectionString = LEFT_TO_RIGHT
            }
        } label: {
            Image(systemName: "globe")
                .font(.system(size: 20))
                .foregroundColor(.black)
        }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
