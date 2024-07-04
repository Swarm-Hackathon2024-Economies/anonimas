//
//  NavigationView.swift
//  anonimasApp
//
//  Created by takuya on 7/4/24.
//

import SwiftUI

struct NavigationView: View {
    @State var isPresented: Bool = true
    var body: some View {
        MapView()
            .sheet(isPresented: $isPresented, content: {
                ArenaContentView()
                    .frame(width: 300, height: 200)
                    .presentationDetents([
                        .medium])
                    .presentationDetents([.height(250)])
                    .presentationDragIndicator(.visible)
            })
    }
}

#Preview {
    NavigationView()
}
