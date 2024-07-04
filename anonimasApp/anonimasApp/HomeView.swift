import SwiftUI

struct HomeView: View {
    @State private var isPresented: Bool = false
    @State private var isListPresented: Bool = false
    
    var body: some View {
        let gradient = LinearGradient(
            stops: [
                Gradient.Stop(color: Color(red: 0.21, green: 0.38, blue: 0.79), location: 0.00),
                Gradient.Stop(color: Color(red: 0.06, green: 0.16, blue: 0.4), location: 1.00),
            ],
            startPoint: UnitPoint(x: 0, y: 0),
            endPoint: UnitPoint(x: 1, y: 1)
        )
        
        ZStack {
            Circle()
                .fill(gradient)
                .frame(width: 3000, height: 3000)
                .offset(CGSize(width: 0, height: -1650))
            VStack {
                HStack {
                    Image(systemName: "list.dash")
                        .offset(x:-60)
                    Image("AppLogo")
                        .resizable()
                        .frame(width: 225, height: 50)
                }
                .offset(CGSize(width: 0, height: -220))
                Button(action: {
                    isPresented = true
                }) {
                    MemberCardView()
                }
                .offset(CGSize(width: 0, height: -230))
                Button(action: {
                    isListPresented = true
                }) {
                    Text("ConnectView")
                }
                .offset(CGSize(width: 0, height: -100))
                
            }
        }
        .fullScreenCover(isPresented: $isPresented) {
            EventCheckInView()
        }
        .fullScreenCover(isPresented: $isListPresented) {
            ConnectionListView()
        }
    }
}

#Preview {
    HomeView()
}
