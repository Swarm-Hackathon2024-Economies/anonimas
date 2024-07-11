//
//  TouchDownSwarmClipApp.swift
//  TouchDownSwarmClip
//
//  Created by takuya on 7/11/24.
//

import SwiftUI

@main
struct TouchDownSwarmClipApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onContinueUserActivity(NSUserActivityTypeBrowsingWeb) { userActivity in
                    guard let incomingURL = userActivity.webpageURL,
                          let components = NSURLComponents(url: incomingURL,resolvingAgainstBaseURL: true),
                          let queryItems = components.queryItems else { return }
                    if let item = queryItems.first {
                        print(item)
                    } else {
                        print("swarm")
                    }
                }
        }
    }
}
