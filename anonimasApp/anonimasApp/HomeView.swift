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
                        Image("AppLogo")
                            .resizable()
                            .frame(width: 225, height: 50)
                    }
                    .offset(CGSize(width: 0, height: -90))
                    Button(action: {
                        isPresented = true
                    }) {
                        MemberCardView(cardSize: .large, name: "Taro Hoge")
                    }
                    .offset(CGSize(width: 0, height: -120))
                    .shadow(radius: 2, x: 0, y: 5)
                    ScrollView {
                        Text("Your Stats")
                            .foregroundColor(.black)
                            .font(.custom("SF-Pro", size: 17))
                            .offset(CGSize(width: -130, height: 0))
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
                        .offset(CGSize(width: 0, height: 0))
                        HStack(spacing: 83) {
                            Text("Recently acquired flags")
                                .font(.custom("SF-Pro", size: 17))
                                .foregroundColor(.black)
                            Button(action: { print("hello")}, label: {Text("View All  〉")})
                        }
                        .offset(CGSize(width: 2, height: 0))
                        ZStack(alignment:.leading) {
                            Rectangle()
                                .frame(width: 346, height: 99)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .shadow(radius: 5,y: 5)
                            ScrollView(.horizontal) {
                                HStack(spacing: 16) {
                                    ForEach(1..<5) { index in
                                        Circle()
                                            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
                                            .frame(width: 66, height: 66)
                                    }
                                }
                            }
                            .offset(CGSize(width: 13.0, height: 0))
                        }
                        .offset(CGSize(width: 35, height: 0))
                        Text("Friend Challenge")
                            .font(.custom("SF-Pro", size: 17))
                            .foregroundColor(.black)
                            .offset(CGSize(width: -104, height: 0))
                        ZStack(alignment:.leading) {
                            Rectangle()
                                .frame(width: 346, height: 126)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .shadow(radius: 5,y: 5)
                            VStack(alignment: .leading, spacing:3) {
                                Text("Weekly Challenge")
                                Text("Distance traveled without touching the smartphone.")
                                    .font(Font.custom("SF Pro", size: 12))
                                    .foregroundColor(Color(red: 0.56, green: 0.56, blue: 0.58))
                                    .offset(x:3)

                                HStack(spacing:4) {
                                    ForEach(1..<6) { index in
                                        Image("UserIcon-\(index)")
                                            .resizable()
                                            .frame(width: 42, height: 42)
                                    }
                                }
                                HStack(alignment:.top, spacing: 197) {
                                    HStack(spacing: 0) {
                                        Image(systemName: "person.2.fill")
                                        Text("5")
                                    }
                                    Text("154/200mi")
                                }
                            }
                            .offset(CGSize(width: 13.0, height: 0))
                        }
                        .offset(CGSize(width: 0, height: 0))
                    }
                    .offset(CGSize(width: 0, height: -160))
                }
                .offset(CGSize(width: 0, height: 190))
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


