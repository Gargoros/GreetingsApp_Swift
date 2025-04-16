
import SwiftUI

struct LandscapeModeView: View {
    var body: some View {
        ZStack {
            BackgraundView()
            HStack (){
                VerticalTitleView()
                Spacer()
                MessagesView()
            }
            .padding(.horizontal)
        }
    }
}
