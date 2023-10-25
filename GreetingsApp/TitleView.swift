//
//  TitleView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 25.10.23.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 0){
            Text("Greeting")
                .font(.largeTitle)
                .fontWeight(.semibold);
            Text("Exploring iOS Programming")
                .font(.headline)
                .fontWeight(.thin);
        }    }
}

#Preview {
    TitleView()
}
