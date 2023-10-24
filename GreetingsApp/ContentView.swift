//
//  ContentView.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 24.10.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
//            Color.cyan.opacity(0.4).ignoresSafeArea()
            LinearGradient(colors: [.cyan, .blue], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea().opacity(0.5)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Greetings!!!!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.purple)
                    .padding()
                    .foregroundStyle(Color.purple)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .shadow(color: .orange, radius: 5, x: 5.0, y: 5.0)
            }
            .padding()
        }
        HStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Greetings!!!!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.purple)
                .padding()
                .foregroundStyle(Color.purple)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .shadow(color: .orange, radius: 5, x: 5.0, y: 5.0)
        }
        .padding()
        ZStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Greetings!!!!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.purple)
                .padding()
                .foregroundStyle(Color.purple)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .shadow(color: .orange, radius: 5, x: 5.0, y: 5.0)
                .opacity(0.3)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
