//
//  ContentView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 24.10.23.
//

import SwiftUI

struct ContentView: View {
    let messages: Array<DataItemModel> = [
        .init(text: "Hello there!", color: .orange),
        .init(text: "Welcome to Swift", color: .green),
        .init(text: "Are you ready to,", color: .gray),
        .init(text: "strat exploring?", color: .yellow),
        .init(text: "boom.", color: .red),
        .init(text: "The End.", color: .purple),
    ]
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            ForEach(messages) {dataItem in
                TextView(
                    text: dataItem.text,
                    color: dataItem.color)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
