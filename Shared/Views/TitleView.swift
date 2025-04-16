
import SwiftUI

struct TitleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Learning iOS programming \nto create iOS apps"
    
    private var greetingsTip: GreetingsTip = GreetingsTip()
    
    
    var body: some View {
        HStack {
            GreetingsTextView(subTitle: $subtitle)
                .popoverTip(greetingsTip)
            Spacer()
            RotatableCirculeView()
        }
    }
    
}
