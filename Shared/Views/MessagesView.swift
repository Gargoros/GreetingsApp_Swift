
import SwiftUI

struct MessagesView: View {
    let messages: Array<DataItemModel> = [
        .init(text: LocalizedStringKey("Hello there!"), color: .myOrange),
        .init(text: LocalizedStringKey("Welcome to Swift"), color: .myGreen),
        .init(text: LocalizedStringKey("Are you ready to,"), color: .myGray),
        .init(text: LocalizedStringKey("strat exploring?"), color: .myYellow),
        .init(text: LocalizedStringKey("boom."), color: .myRed),
        .init(text: LocalizedStringKey("The End."), color: .myPurple),
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
