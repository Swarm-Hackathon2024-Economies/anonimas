import SwiftUI


struct TeamView: View {
    let gradient = LinearGradient(
        stops: [
            Gradient.Stop(color: Color(red: 0.21, green: 0.38, blue: 0.79), location: 0.00),
            Gradient.Stop(color: Color(red: 0.06, green: 0.16, blue: 0.4), location: 1.00),
        ],
        startPoint: UnitPoint(x: 0, y: 0),
        endPoint: UnitPoint(x: 1, y: 1)
    )

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Circle()
                    .fill(gradient)
                    .frame(width: 3000, height: 3000)
                    .offset(CGSize(width: 0, height: -1650))
                Image("COWBOYS-player")
                    .resizable()
                    .frame(width: 345, height: 292)
                    .offset(CGSize(width: 0, height: -270))
                Image("COWBOYS-logo")
                    .offset(CGSize(width: -90, height: -210))
            }
        }
    }
}

#Preview {
    TeamView()
}
