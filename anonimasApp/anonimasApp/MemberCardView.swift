import SwiftUI

struct MemberCardView: View {
    let gradient = LinearGradient(gradient: Gradient(colors: [.gray,.blue,.green]), startPoint: .topLeading, endPoint: .bottomTrailing)

    var body: some View {
        ZStack {
            Rectangle()
                .fill(gradient)
                .frame(width: 350, height: 180)
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
                            .fill(.black.opacity(0.2))
                            .frame(width: 300, height: 70)
                            .cornerRadius(10.0)
                    }
                    HStack(spacing: 16) {
                        VStack(spacing: 0) {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 33, height: 33)
                            Text("Cowboys")
                                .font(.footnote)
                                .foregroundColor(.white)
                        }
                        VStack(spacing: 0) {
                            Text(23.description)
                                .font(.title)
                                .fontWeight(.black)
                            Text("Connect")
                                .font(.footnote)
                        }
                        .foregroundColor(.white)
                        VStack(spacing: 0) {
                            Text(35.description)
                                .font(.title)
                                .fontWeight(.black)
                            Text("Flag")
                                .font(.footnote)
                        }
                        .foregroundColor(.white)
                        VStack(spacing: 0) {
                            Text(123.description)
                                .font(.title)
                                .fontWeight(.black)
                            Text("Touchdown")
                                .font(.footnote)
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
