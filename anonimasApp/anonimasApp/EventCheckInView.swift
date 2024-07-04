import SwiftUI

struct EventCheckInView: View {
    @State private var eventCode: String = ""
    @State private var userName: String = ""
    @State private var isCheckedIn: Bool = false
    @State private var dragOffset: CGSize = .zero
    @State private var isDragging: Bool = false
    @State private var imageHeight: CGFloat = 0
    @State private var isPresented: Bool = false
    @State private var imageScal: CGFloat = 1
    @State private var textScale: CGFloat = 1
    let gradient = LinearGradient(gradient: Gradient(colors: [.cyan,.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        VStack{
            Button(action: {
                isPresented = true //trueにしないと画面遷移されない
            }) {
                Text("戻る")
            }

            Image("PullButton")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
                .offset(y: 30 + max(dragOffset.height, 0))  // オフセットを反転
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            self.dragOffset = gesture.translation
                            self.isDragging = true
                            self.imageScal = 1 +  (gesture.translation.height / 300)
                        }
                        .onEnded { _ in
                            if self.dragOffset.height > 50 {  // 条件を反転
                                self.checkIn()
                            }
                            withAnimation(.spring()) {
                                self.dragOffset = .zero
                                self.isDragging = false
                                self.imageScal = 1
                            }
                        }
                )
                .zIndex(2)
                .scaleEffect(self.imageScal)
            
            Image("DownArrow")  // テキストを変更
                .foregroundColor(.white)
                .padding(.top, 30)
                .zIndex(1)
            
            if isCheckedIn {
                Text("Conguratulations！!!!!!!!")
                    .foregroundColor(.green)
                    .font(.headline)
                    .scaleEffect(textScale)
                    .animation(.easeInOut(duration: 2), value: textScale)
            } else {
                Text("Pull!!!!!!!!!!!!!!!!!!!!!")
                    .foregroundColor(.green)
                    .font(.headline)
            }
        }
        .fullScreenCover(isPresented: $isPresented) {
            HomeView()
        }
        .padding()
    }
    
    func checkIn() {
        // ここでタグを引いた時のロジックを実装
        isCheckedIn = true
        textScale += 0.3
    }
}

struct EventCheckInView_Previews: PreviewProvider {
    static var previews: some View {
        EventCheckInView()
    }
}
