//
//  TextView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 25.10.23.
//

import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: Array<Color> = [
        .red,
        .green,
        .blue,
        .orange,
        .gray,
        .accentColor,
        .pink,
        .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139 / 255, green: 207 / 255, blue: 240 / 255),
        Color(red: 1, green: 215 / 255, blue: 0)
    ]
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: color, radius: 5, x: 10.0, y: 10.0)
            .onTapGesture {
//                Randomly change color
                color = colors.randomElement() ?? .white
                
            }
    }
}

#Preview {
    VStack {
        TextView(text: "text-text", color: .green)
        TextView(text: "text-text", color: .orange)
        TextView(text: "text-text", color: .yellow)
        TextView(text: "text-text", color: .red)
    }
}
