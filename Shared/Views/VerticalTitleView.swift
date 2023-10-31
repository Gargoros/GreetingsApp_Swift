//
//  VerticalTitleView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 31.10.23.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "Learning iOS programming \nto create iOS apps"
    
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subTitle: $subtitle)
            RotatableCirculeView()
            Spacer()
        }.padding()
    }
}

#Preview {
    VerticalTitleView()
}
