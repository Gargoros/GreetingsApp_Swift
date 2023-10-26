//
//  TitleView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 25.10.23.
//

import SwiftUI

/// This is the title view of the app which  display:
/// A title, a subtitle, which randomly changes on tap
/// and we havecolorful dish which rotates on tap and
/// that is amazing.
struct TitleView: View {
    
    let lineWidth: CGFloat = 15.0
    let diameter: CGFloat = 70.0
    @State private var subTitle: LocalizedStringKey = LocalizedStringKey("Learning iOS programming \nto create iOS apps")
    let subTitles: Array<LocalizedStringKey> = [
        LocalizedStringKey("Learning iOS programming \nto create iOS apps"),
        LocalizedStringKey("Learning to write programs \nstretches your mind."),
        LocalizedStringKey("I learned the fundamentals \nfor programming!"),
        LocalizedStringKey("I could not have gotten this \nfar without the support."),
        LocalizedStringKey("I came in with near zero \nprogramming knowledge."),
        LocalizedStringKey("When you throw yourself \nout there great things happen."),
        LocalizedStringKey("Coding is the language \nof the future.")
    ]
    
    @State private var isRotated: Bool = false
    
    var angel: Angle {
        isRotated ? .zero : .degrees(360)
    }
    
    var angularGradient: AngularGradient {
        return AngularGradient.init(gradient: Gradient(
            colors: [.pink, .orange, .purple, .blue, .green, .red]), center: .center, angle: .zero)
    }
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 8){
                Text(LocalizedStringKey("Greeting in SwiftUI App"))
                    .font(.title)
                    .fontWeight(.semibold);
                Text(subTitle)
                    .font(.subheadline)
                    .fontWeight(.thin)
                    .onTapGesture {
//                        Change caption (subTitle)
                        withAnimation{
                            subTitle = subTitles.randomElement() ?? subTitle
                        }
                    }
            }
            Spacer()
            Circle()
                .strokeBorder(angularGradient, lineWidth: lineWidth)
                .rotationEffect(angel)
                .frame(width: diameter, height: diameter, alignment: .center)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()
                    }
                }
        }
    }
    
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
