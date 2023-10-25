//
//  BackgraundView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 25.10.23.
//

import SwiftUI

struct BackgraundView: View {
    var body: some View {
        LinearGradient(colors: [.blue, Color(red:139 / 255, green: 80 / 255, blue: 240 / 255)], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.4)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgraundView()
}
