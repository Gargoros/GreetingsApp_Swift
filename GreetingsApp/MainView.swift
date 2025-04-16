
import SwiftUI

// Portrait = Compact width, regular height (Doc SE)
// LandScape = Compact width, compact height (Doc SE)
// iPad = Regular width, regular height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
        if isPortraitPhone || isIPad{
            NavigationStack{
                PortraitModeView()
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing){
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        } else {
            NavigationStack{
                LandscapeModeView()
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing){
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }
    }
}
