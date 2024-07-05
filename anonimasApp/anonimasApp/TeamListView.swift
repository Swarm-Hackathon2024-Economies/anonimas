import SwiftUI

struct TeamListView: View {
    @State private var selectedIndex: Int?
    let items = Array(1...40) // 例として40個のアイテムを作成

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
                        Image(selectedIndex == item ? "Flag-Selected" : "Flag-Unselected")
                            .resizable()
                            .scaledToFit()
                            .shadow(radius: 10, x: 5, y: 5)
                            .frame(width: 100, height: 100)
                            .onTapGesture {
                                selectedIndex = item
                            }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center) // 親の最大幅に対して中央揃え
            }
            .padding()
        }
    }
}

#Preview {
    TeamListView()
}
