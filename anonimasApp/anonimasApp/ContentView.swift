import SwiftUI

struct ContentView: View {
    @State private var eventCode: String = ""
    @State private var userName: String = ""
    @State private var isCheckedIn: Bool = false
    init() {
        let appearance: UITabBarAppearance = UITabBarAppearance()
        appearance.backgroundColor = .white
        UITabBar.appearance().scrollEdgeAppearance = appearance
        UITabBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        ZStack {
            TabView{
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("HOME")
                    }
                ConnectionListView()
                    .tabItem {
                        Image(systemName: "person.2.fill")
                        Text("Friends")
                    }
                NavigationView()
                    .tabItem {
                        Image("SteerlingWheel")
                    }
                TeamView()
                    .tabItem {
                        Image(systemName: "football.fill")
                        Text("Team")
                    }
                PienView()
                    .tabItem {
                        Image(systemName: "figure.american.football")
                        Text("Pien")
                    }
            }
        }
    }
}


#Preview {
    ContentView()
}
