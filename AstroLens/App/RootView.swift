import SwiftUI

struct RootView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.04, green: 0.04, blue: 0.07),
                    Color(red: 0.06, green: 0.09, blue: 0.16)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 12) {
                Text("AstroLens")
                    .font(.system(size: 42, weight: .light, design: .default))
                    .foregroundStyle(Color(red: 0.98, green: 0.75, blue: 0.14))

                Text("See Astrology in AR")
                    .font(.system(size: 17, weight: .regular, design: .default))
                    .foregroundStyle(Color(red: 0.89, green: 0.91, blue: 0.94))
            }
            .accessibilityElement(children: .combine)
            .accessibilityLabel("AstroLens. See Astrology in AR.")
        }
    }
}

#Preview {
    RootView()
}

