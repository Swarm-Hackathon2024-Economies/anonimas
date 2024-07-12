//
//  TouchDownSwarmApp.swift
//  TouchDownSwarm
//
//  Created by takuya on 7/11/24.
//

import SwiftUI

@main
struct TouchDownSwarmApp: App {
    @StateObject private var friendData = FriendList()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(friendData)
        }

    }
}
