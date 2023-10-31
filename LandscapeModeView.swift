//
//  LandscapeModeView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 31.10.23.
//

import SwiftUI

struct LandscapeModeView: View {
    var body: some View {
        ZStack {
            BackgraundView()
            HStack (){
                VerticalTitleView()
                Spacer()
                MessagesView()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    LandscapeModeView()
}
