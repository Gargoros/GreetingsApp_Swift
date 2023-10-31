//
//  TitleView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 25.10.23.
//

import SwiftUI

/// This is the title view of the app which  display:
/// A title, a subtitle, which randomly changes on tap
/// and we havecolorful dish which rotates on tap and
/// that is amazing.
struct TitleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Learning iOS programming \nto create iOS apps"
    
    private var greetingsTip: GreetingsTip = GreetingsTip()
    
    
    var body: some View {
        HStack {
            GreetingsTextView(subTitle: $subtitle)
                .popoverTip(greetingsTip)
            Spacer()
            RotatableCirculeView()
        }
    }
    
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
