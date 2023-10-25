//
//  ContentView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 24.10.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            TextView(
                text: "Hello there!",
                color: .orange)
            
            TextView(
                text: "Welcome to Swift",
                color: .green)
            
            TextView(
                text: "Are you ready to,",
                color: .gray)
            
            TextView(
                text: "strat exploring?",
                color: .yellow)
            
            TextView(
                text: "boom.",
                color: .red)
            
            TextView(
                text: "The End.",
                color: .purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
