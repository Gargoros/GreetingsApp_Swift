//
//  MessagesView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 25.10.23.
//

import SwiftUI

struct MessagesView: View {
    let messages: Array<DataItemModel> = [
        .init(text: "Hello there!", color: .myOrange),
        .init(text: "Welcome to Swift", color: .myGreen),
        .init(text: "Are you ready to,", color: .myGray),
        .init(text: "strat exploring?", color: .myYellow),
        .init(text: "boom.", color: .myRed),
        .init(text: "The End.", color: .myPurple),
    ]
    var body: some View {
        VStack (alignment: .leading){
            ForEach(messages) {dataItem in
                TextView(
                    text: dataItem.text,
                    color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
