
import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
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
    
    var font: Font {
#if os(macOS)
        .title
#elseif os(iOS)
        isIPad ? .largeTitle : .body
#endif
    }
    
    var body: some View {
        Text(text)
            .font(font)
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
