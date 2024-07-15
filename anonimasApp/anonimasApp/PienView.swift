//
//  PienView.swift
//  anonimasApp
//
//  Created by shiyo_ohashi on 2024/07/09.
//

import SwiftUI

struct PienView: View {
    @State private var searchText = ""
    @State private var isShowPien = false
    @State private var isAnimating = false
    let gradient = LinearGradient(
        stops: [
            Gradient.Stop(color: Color(red: 0.21, green: 0.38, blue: 0.79), location: 0.00),
            Gradient.Stop(color: Color(red: 0.06, green: 0.16, blue: 0.4), location: 1.00),
        ],
        startPoint: UnitPoint(x: 0, y: 0),
        endPoint: UnitPoint(x: 1, y: 1)
    )
    
    var body: some View {
        ZStack {
            Image("Screen-Back")
                .resizable()
                .frame(height: 880)
            if self.isShowPien == false {
                Button(action: {
                    isShowPien = true
                    isAnimating = true
                }) {
                    VStack { // VStackを追加
                        Text("Driving Now!!")
                            .font(.system(size: 50))
                            .bold()
                            .foregroundColor(.blue)
                        GIFView(gifName: "car", minimumInterval: 0.03)
                                    .frame(width: 200, height: 200)
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.clear) // 背景色を設定
                    
                }
            }
            if self.isShowPien == true {
                Button(action: {
                    isShowPien = false
                    isAnimating = false
                }){
                    VStack {
                        Text("Dangerous!!!")
                            .font(.system(size: 50))
                            .bold()
                            .foregroundStyle(.black)
                            .zIndex(1.0)
                        Spacer()
                               .frame(height: 200)
                        Text("🥺")
                            .font(.system(size: 30))
                            .scaleEffect(isAnimating ? 1 : 15)
                            .animation(.easeIn(duration: 2), value: isAnimating)
                            .onAppear {
                                withAnimation {
                                    self.isAnimating.toggle()
                                }
                            }
                            .zIndex(2)
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.red) // 背景色を設定
                }
            }
                
        }
    }
}


#Preview {
    RankingView()
}
