//
//  GreetingsTextView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 31.10.23.
//

import SwiftUI

struct GreetingsTextView: View {
    @Binding var subTitle: LocalizedStringKey;
    let subTitles: Array<LocalizedStringKey> = [
        LocalizedStringKey("Learning iOS programming \nto create iOS apps"),
        LocalizedStringKey("Learning to write programs \nstretches your mind."),
        LocalizedStringKey("I learned the fundamentals \nfor programming!"),
        LocalizedStringKey("I could not have gotten this \nfar without the support."),
        LocalizedStringKey("I came in with near zero \nprogramming knowledge."),
        LocalizedStringKey("When you throw yourself \nout there great things happen."),
        LocalizedStringKey("Coding is the language \nof the future.")
    ]
    
    var body: some View {
        VStack (alignment: .leading, spacing: 8){
            Text(LocalizedStringKey("Greeting in SwiftUI App"))
                .font(.title)
                .fontWeight(.semibold)
#if os(macOS)
            Text(subTitle)
                .font(.title)
#elseif os(iOS)
            Text(subTitle)
                .font(.subheadline)
                .fontWeight(.thin)
#endif
#if os (macOS)
Text ("MAC APP" )
#elseif os(iOS)
Text ("iOS APP")
#endif
        }
                .onTapGesture {
//                        Change caption (subTitle)
                    withAnimation{
                        subTitle = subTitles.randomElement() ?? subTitle
                    }
                }
        }
    }


#Preview {
    GreetingsTextView(subTitle: .constant("Learning iOS programming \nto create iOS apps"))
}
