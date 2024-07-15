import SwiftUI

struct RankingView: View {
    @State private var searchText = ""
    @State private var isPresented = false
    let gradient = LinearGradient(
        stops: [
            Gradient.Stop(color: Color(red: 0.21, green: 0.38, blue: 0.79), location: 0.00),
            Gradient.Stop(color: Color(red: 0.06, green: 0.16, blue: 0.4), location: 1.00),
        ],
        startPoint: UnitPoint(x: 0, y: 0),
        endPoint: UnitPoint(x: 1, y: 1)
    )
    
    var body: some View {
        ZStack {
            Image("Screen-Back")
                .resizable()
                .frame(height: 880)
            Text("To be continue...!")
                .font(.title)
                .bold()
                .foregroundColor(.blue)
            Button(action: {
                isPresented = true
            }) {
                PienView()
            }

        }
    }
}

#Preview {
    RankingView()
}
