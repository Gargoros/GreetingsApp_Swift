
import SwiftUI

struct BackgraundView: View {
    var body: some View {
        LinearGradient(colors: [.myBlue1, .myBlue2,], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(1)
            .ignoresSafeArea()
    }
}
