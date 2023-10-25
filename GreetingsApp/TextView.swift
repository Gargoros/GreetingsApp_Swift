//
//  TextView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 25.10.23.
//

import SwiftUI

struct TextView: View {
    let text: String
    let color: Color
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: color, radius: 5, x: 10.0, y: 10.0)
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
