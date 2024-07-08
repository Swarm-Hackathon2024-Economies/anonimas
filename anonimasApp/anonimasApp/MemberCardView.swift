import SwiftUI

struct MemberCardView: View {
    let gradient = LinearGradient(gradient: Gradient(colors: [.gray,.blue,.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        ZStack {
            Image("MemberCardBG")
                .resizable()
                .frame(width: 347, height: 183)
                .cornerRadius(15.0)
            VStack(spacing: 10) {
                HStack(spacing: 20) {
                    Image(systemName: "football.circle.fill")
                        .resizable()
                        .frame(width: 70, height: 70)
                    Text("Rikuto Yasuda")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                }
                ZStack {
                    HStack {
                        Rectangle()
                            .fill(.black.opacity(0.5))
                            .frame(width: 317, height: 81)
                            .cornerRadius(10.0)
                    }
                    HStack(alignment:.bottom,spacing: 16) {
                        VStack(spacing: 0) {
                            Image("TeamIcon-6")
                                .resizable()
                                .frame(width: 52, height: 48)
                            Text("Cowboys")
                                .font(.custom("SF-Pro", size: 14))
                                .foregroundColor(.white)
                        }
                        VStack(spacing: 0) {
                            Text(23.description)
                                .font(.title)
                                .fontWeight(.black)
                            Text("Connect")
                                .font(.custom("SF-Pro", size: 14))
                        }
                        .foregroundColor(.white)
                        VStack(spacing: 0) {
                            Text(35.description)
                                .font(.title)
                                .fontWeight(.black)
                            Text("Flag")
                                .font(.custom("SF-Pro", size: 14))
                        }
                        .foregroundColor(.white)
                        VStack(spacing: 0) {
                            Text(123.description)
                                .font(.title)
                                .fontWeight(.black)
                            Text("Touchdown")
                                .font(.custom("SF-Pro", size: 14))
                        }
                        .foregroundColor(.white)
                    }
                }
            }
            .padding(.all,50)
        }
    }
}

#Preview {
    MemberCardView()
}
