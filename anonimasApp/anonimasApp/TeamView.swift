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
                    .offset(CGSize(width: 0, height: -1600))
                Image("COWBOYS-player")
                    .resizable()
                    .frame(width: 345, height: 292)
                    .offset(CGSize(width: 0, height: -230))
                HStack {
                    Image("COWBOYS-logo")
                        .offset(CGSize(width: 0, height: -20))
                    ZStack {
                        Rectangle()
                            .frame(width: 182, height: 90)
                            .foregroundColor(.black.opacity(0.5))
                            .cornerRadius(8)
                        VStack(alignment:.leading, spacing: 0) {
                            VStack(alignment:.leading, spacing: 0) {
                                Text("Menber")
                                    .font(.custom("SF-Pro", size: 14))
                                Text("64,123")
                                    .font(.title2)
                                    .bold()
                            }
                            VStack(alignment:.leading, spacing: 0) {
                                Text("TeamPoint")
                                    .font(.custom("SF-Pro", size: 14))
                                Text("1,614,123")
                                    .font(.title2)
                                    .bold()
                            }
                        }
                        .foregroundColor(.white)
                        .frame(width: 182, alignment: .leading)
                        .offset(CGSize(width: 18.0, height: 0))
                    }
                }
                .offset(CGSize(width: 0, height: -160))
            }
        }
        TeamListView()
            .offset(CGSize(width: 0, height: 1110))
    }
}

#Preview {
    TeamView()
}
