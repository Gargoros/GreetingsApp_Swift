
import SwiftUI
import TipKit

@main
struct GreetingsAppApp: App {
//    @State private var language: String = "en"
//    @State private var layoutDirectionString: String = LEFT_TO_RIGHT
    
    @AppStorage("language") var language: String = "en"
    @AppStorage("layoutDirectionString") var layoutDirectionString: String = LEFT_TO_RIGHT

    
    var layoutDirection: LayoutDirection {
        layoutDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $layoutDirectionString)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
                .task {
                    try? Tips.resetDatastore()
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
                }
        }
    }
}
