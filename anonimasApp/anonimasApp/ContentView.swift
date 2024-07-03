import SwiftUI

struct ContentView: View {
    @State private var eventCode: String = ""
    @State private var userName: String = ""
    @State private var isCheckedIn: Bool = false
    
    var body: some View {
        VStack{
            EventCheckInView()
        }
    }
}

#Preview {
    ContentView()
}
