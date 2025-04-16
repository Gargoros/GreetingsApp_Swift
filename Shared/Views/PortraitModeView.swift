
import SwiftUI

struct PortraitModeView: View {
    
    var body: some View {
        ZStack {
            BackgraundView()
            VStack (alignment: .leading, spacing: 10){
                TitleView()
                Spacer()
                Spacer()
                MessagesView()
            }
            .padding()
        }
    }
}
