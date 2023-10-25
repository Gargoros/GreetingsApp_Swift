//
//  MessagesView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 25.10.23.
//

import SwiftUI

struct MessagesView: View {
    let messages: Array<DataItemModel> = [
        .init(text: "Hello there!", color: .orange),
        .init(text: "Welcome to Swift", color: .green),
        .init(text: "Are you ready to,", color: .gray),
        .init(text: "strat exploring?", color: .yellow),
        .init(text: "boom.", color: .red),
        .init(text: "The End.", color: .purple),
    ]
    var body: some View {
        ForEach(messages) {dataItem in
            TextView(
                text: dataItem.text,
                color: dataItem.color)
        }
    }
}

#Preview {
    MessagesView()
}
