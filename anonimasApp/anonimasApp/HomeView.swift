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
                Image("Screen-Back")
                    .resizable()
                    .frame(height: 880)
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
                    .shadow(radius: 2, x: 0, y: 5)
                    Text("Your Stats")
                        .font(.custom("SF-Pro", size: 22))
                        .offset(CGSize(width: -120, height: -150))
                    HStack(spacing: 13) {
                        ZStack(alignment:.leading) {
                            Rectangle()
                                .frame(width: 164, height: 114)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .shadow(radius: 5,y: 5)
                            VStack(alignment:.leading, spacing: 13) {
                                Text("1,234")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(.green)
                                Text("Sefety Score")
                                    .font(.custom("SF-Pro", size: 16))
                                    .foregroundColor(.gray)
                            }
                            .offset(CGSize(width: 13.0, height: 0))
                        }
                        ZStack(alignment:.leading) {
                            Rectangle()
                                .frame(width: 164, height: 114)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .shadow(radius: 5,y: 5)
                            VStack(alignment:.leading, spacing: 13) {
                                Text("1,329,234")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(.blue)
                                Text("Team Point")
                                    .font(.custom("SF-Pro", size: 16))
                                    .foregroundColor(.gray)
                            }
                            .offset(CGSize(width: 13.0, height: 0))
                        }
                    }
                    .offset(CGSize(width: 0, height: -150))
                    Text("Flags")
                        .font(.custom("SF-Pro", size: 22))
                        .offset(CGSize(width: -140, height: -140))
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
