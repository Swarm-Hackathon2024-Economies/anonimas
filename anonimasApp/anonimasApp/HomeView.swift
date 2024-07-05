import SwiftUI

struct HomeView: View {
    @State private var isPresented: Bool = false

    var body: some View {
        let gradient = LinearGradient(
            stops: [
                Gradient.Stop(color: Color(red: 0.21, green: 0.38, blue: 0.79), location: 0.00),
                Gradient.Stop(color: Color(red: 0.06, green: 0.16, blue: 0.4), location: 1.00),
            ],
            startPoint: UnitPoint(x: 0, y: 0),
            endPoint: UnitPoint(x: 1, y: 1)
        )
        VStack {

            ZStack {
                Circle()
                    .fill(gradient)
                    .frame(width: 3000, height: 3000)
                    .offset(CGSize(width: 0, height: -1600))
                VStack {
                    HStack {
                        Image(systemName: "list.dash")
                            .offset(x:-60)
                        Image("AppLogo")
                            .resizable()
                            .frame(width: 225, height: 50)
                    }
                    .offset(CGSize(width: 0, height: -100))
                    Button(action: {
                        isPresented = true
                    }) {
                        MemberCardView()
                    }
                    .offset(CGSize(width: 0, height: -120))
                    Text("Your Stats")
                        .font(.custom("SF-Pro", size: 22))
                        .offset(CGSize(width: -120, height: -150))
                    HStack(spacing: 13) {
                        ZStack {
                            Rectangle()
                                .frame(width: 164, height: 114)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .shadow(radius: 5,y: 5)
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 164, height: 114)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .shadow(radius: 5,y: 5)
                        }
                    }
                    .offset(CGSize(width: 0, height: -150))
                    Text("Flags")
                        .font(.custom("SF-Pro", size: 22))
                        .offset(CGSize(width: -120, height: -150))
                }
            }
        }
        .fullScreenCover(isPresented: $isPresented) {
            EventCheckInView()
        }
    }
}

#Preview {
    HomeView()
}
