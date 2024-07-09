//
//  anonimasAppApp.swift
//  anonimasApp
//
//  Created by takuya on 7/3/24.
//

import SwiftUI

@main
struct anonimasAppApp: App {
    @StateObject private var friendData = FriendData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(friendData)
        }
    }
}
