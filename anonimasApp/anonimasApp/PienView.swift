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
    @State var value: Double = 0
    @State var touchDownCount: Int = 0
    @State var isDangerous: Bool = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    let timer2 = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
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
            
            HStack {
                Text("\(touchDownCount)")
                    .offset(y: -280)
                    .foregroundColor(.white)
                    .font(.custom("SF Pro Display", size: 72)
                        .weight(.black)
                        .italic()
                    )
                
                Image("touchdown2row")
                    .resizable()
                    .frame(width: 120, height: 50)
                    .offset(y: -280)
            }
            
            Gauge(value: value, in: 0...100) {
//                Text(Int(value), format: .percent)
            }currentValueLabel: {
                // nothing
            }
        minimumValueLabel: {
            Text("\(Int(0))")
                        } maximumValueLabel: {
                            Text("\(Int(100))mile")
                        }
                        .gaugeStyle(.linearCapacity)
                        .tint(isDangerous ? .red : .green)
                        .padding(.horizontal, 30)
                        .offset(y: -200)
                        .onReceive(timer) { _ in
                            if isDangerous == false {
                                randomValue()
                            }
                            if value >= 100 {
                                countUp()
                            }
                        }
                        .onReceive(timer2, perform: { _ in
                            if isDangerous == true {
                                if value >= 0 {
                                  value = value - 10
                                }
                            }
                        })
                        .foregroundColor(.white)
                        
            
            if self.isShowPien == false {
                Button(action: {
                    isShowPien = true
                    isAnimating = true
                }) {
                    VStack { // VStackを追加
                        Text("Driving Now!!")
                            .offset(y: 50)
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
//                    value = 0
                    touchDownCount = 0
                    isDangerous = true
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
    
    func randomValue() {
        value = value + Double.random(in: 0...10)
        if value > 100 {
            value = 100
        }
    }
    
    func reduceScore() {
        value = value - Double.random(in: 0...10)
        if value < 0 {
            value = 0
        }
    }
    
    func countUp() {
        touchDownCount += 1
        value = 0
    }
}


#Preview {
    RankingView()
}
