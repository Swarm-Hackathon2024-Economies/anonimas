//
//  ContentView.swift
//  TouchDownSwarmClip
//
//  Created by takuya on 7/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0

    
    var body: some View {
        VStack {
            Image(systemName: "flag")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(count)")
            Text("Hello, world!")
            Text("This is Clips!!!!!")
            Button(action: {
                self.count += 1
            }, label: {
                Text("Button")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
