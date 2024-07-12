import SwiftUI

struct HomeView: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
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
                        MemberCardView(cardSize: .large, name: "Hoge Fuga")
                    }
                    .offset(CGSize(width: 0, height: -120))
                    .shadow(radius: 2, x: 0, y: 5)
                    Text("Your Stats")
                        .offset(CGSize(width: -120, height: -150))
                        .foregroundColor(.black)
                        .font(.custom("SF-Pro", size: 22))
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
                        .foregroundColor(.black)
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
