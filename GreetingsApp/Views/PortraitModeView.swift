//
//  ContentView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 24.10.23.
//

import SwiftUI

struct PortraitModeView: View {
    
    var body: some View {
        ZStack {
            BackgraundView()
            VStack (alignment: .leading, spacing: 10){
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    PortraitModeView()
}
