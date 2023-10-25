//
//  BackgraundView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 25.10.23.
//

import SwiftUI

struct BackgraundView: View {
    var body: some View {
        LinearGradient(colors: [.myBlue1, .myBlue2,], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(1)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgraundView()
}
