//
//  RotatableCirculeView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 31.10.23.
//

import SwiftUI

struct RotatableCirculeView: View {
    
    let lineWidth: CGFloat = 15.0
    let diameter: CGFloat = 70.0
    
    @State private var isRotated: Bool = false
    
    var angel: Angle {
        isRotated ? .zero : .degrees(360)
    }
    var angularGradient: AngularGradient {
        return AngularGradient.init(gradient: Gradient(
            colors: [.pink, .orange, .purple, .blue, .green, .red]), center: .center, angle: .zero)
    }
    var body: some View {
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

#Preview {
    RotatableCirculeView()
}
