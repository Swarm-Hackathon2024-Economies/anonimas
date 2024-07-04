import SwiftUI

struct ConnectionCardView: View {
    let userName: String
    let touchdownNumber: Int
    let flagNumber: Int

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black.opacity(0.5))
                .frame(width: 345, height: 100)
                .cornerRadius(10.0)
            HStack {
                Image(systemName: "bahtsign.circle")
                    .resizable()
                    .frame(width: 72, height:72)
                VStack {
                    Text("\(userName)")
                        .font(.title3)
                        .fontWeight(.black)
                    HStack {
                        VStack {
                            Text("\(touchdownNumber)")
                                .font(.title)
                                .fontWeight(.black)
                            Text("Touchdown")
                        }
                        VStack {
                            Text("\(flagNumber)")
                                .font(.title)
                                .fontWeight(.black)
                            Text("Flag")
                        }
                    }
                }
                Image(systemName: "bahtsign.circle")
                    .resizable()
                    .frame(width: 72, height:72)
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ConnectionCardView(userName: "Kento Izumi", touchdownNumber: 823, flagNumber: 286)
}
