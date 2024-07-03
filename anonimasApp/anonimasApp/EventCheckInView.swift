import SwiftUI

struct EventCheckInView: View {
    @State private var eventCode: String = ""
    @State private var userName: String = ""
    @State private var isCheckedIn: Bool = false
    @State private var dragOffset: CGSize = .zero
    @State private var isDragging: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("This is your flagggg!!!!! Fu*k You !!!!!!!!!")
                .font(.largeTitle)
            
            ZStack(alignment: .top) {  // .bottom から .top に変更
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue)
                    .frame(height: 100)
                
                Image(systemName: "flag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .offset(y: 30 + max(dragOffset.height, 0))  // オフセットを反転
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                self.dragOffset = gesture.translation
                                self.isDragging = true
                            }
                            .onEnded { _ in
                                if self.dragOffset.height > 50 {  // 条件を反転
                                    self.checkIn()
                                }
                                withAnimation(.spring()) {
                                    self.dragOffset = .zero
                                    self.isDragging = false
                                }
                            }
                    )
                
                Text("下にスワイプしてFu*k YOU!!!!!!!!!")  // テキストを変更
                    .foregroundColor(.white)
                    .padding(.top, 10)  // .bottom から .top に変更
            }
            .frame(height: 100)
            
            if isCheckedIn {
                Text("Fu*kYou!!!!!!!As****Hol******！")
                    .foregroundColor(.green)
                    .font(.headline)
            }
        }
        .padding()
    }
    
    func checkIn() {
        // ここでチェックインのロジックを実装
        isCheckedIn = true
    }
}

struct EventCheckInView_Previews: PreviewProvider {
    static var previews: some View {
        EventCheckInView()
    }
}
