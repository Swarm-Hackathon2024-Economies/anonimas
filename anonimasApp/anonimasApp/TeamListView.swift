import SwiftUI

struct TeamListView: View {
    @State private var selectedIndex: Int?
    let items = Array(1...12)
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(items, id: \.self) { item in
                        ZStack {
                            Image(selectedIndex == item ? "Flag-Selected" : "Flag-Unselected")
                                .resizable()
                                .scaledToFit()
                                .shadow(radius: 10, x: 5, y: 5)
                                .frame(width: 100, height: 100)
                                .onTapGesture {
                                    selectedIndex = item
                                }
                            Image("TeamIcon-\(item)")
                                .resizable()
                                .scaledToFit()
                                .shadow(radius: 10, x: 5, y: 5)
                                .frame(width: 65, height: 65)
                                .onTapGesture {
                                    selectedIndex = item
                                }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding()
        }
    }
}

#Preview {
    TeamListView()
}
