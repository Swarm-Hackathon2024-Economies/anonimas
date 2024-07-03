//
//  ContentView.swift
//  anonimasApp
//
//  Created by takuya on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    @State private var eventCode: String = ""
    @State private var userName: String = ""
    @State private var isCheckedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Pull Your Flagggggg!!!!!!!!!")
                .font(.largeTitle)
            
            Button(action: {
                checkIn()
            }) {
                Text("Your Tag")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            if isCheckedIn {
                Text("GET OUR TAG FU*K****!!!!！")
                    .foregroundColor(.green)
                    .font(.headline)
            }
        }
        .padding()
    }
    
    func checkIn() {
        // ここでチェックインのロジックを実装
        // 例: サーバーにデータを送信する、ローカルデータベースを更新するなど
        isCheckedIn = true
    }
}

#Preview {
    ContentView()
}
