import SwiftUI

struct HomeView: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
        let gradient = LinearGradient(gradient: Gradient(colors: [.cyan,.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
        
        ZStack {
            Circle()
                .fill(gradient)
                .frame(width: 3000, height: 3000)
                .offset(CGSize(width: 0, height: -1630))
            VStack {
                HStack {
                    Image(systemName: "list.dash")
                        .offset(x:-60)
                    Text("たっちだうん\nこねくと")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .foregroundColor(.white)
                }
                .offset(CGSize(width: 0, height: -200))
                Button(action: {
                    isPresented = true //trueにしないと画面遷移されない
                }) {
                    MemberCardView()
                }
                .offset(CGSize(width: 0, height: -250))
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
