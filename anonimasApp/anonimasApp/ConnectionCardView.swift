import SwiftUI

struct ConnectionCardView: View {
    let id: Int
    let userName: String
    let touchdownNumber: Int
    let flagNumber: Int
    let imageNumber: Int
    
    var body: some View {
        ZStack {
            Image("ConnectionCardBG-\(imageNumber.description)")
                .frame(width: 345, height: 100)
                .cornerRadius(10.0)
            HStack(spacing: 12) {
                Image("UserIcon-\(id)")
                    .resizable()
                    .frame(width: 72.36, height:72.36)
                VStack {
                    HStack {
                        Text("\(userName)")
                            .font(.title3)
                            .fontWeight(.black)
                    }
                    HStack(spacing: 17) {
                        VStack {
                            Text("\(touchdownNumber)")
                                .font(.title)
                                .fontWeight(.black)
                            Text("Touchdown")
                                .font(.custom("SF-Pro", size: 14))
                        }
                        VStack {
                            Text("\(flagNumber)")
                                .font(.title)
                                .fontWeight(.black)
                            Text("Flag")
                                .font(.custom("SF-Pro", size: 14))
                        }
                    }
                }
                Image("TeamIcon-\(imageNumber.description)")
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 60)
            }
            .frame(width: 320)
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ConnectionCardView(id: 1,userName: "Kento Izumi", touchdownNumber: 823, flagNumber: 286, imageNumber: 1)
}
