//
//  ContentView.swift
//  adaptive-text
//
//  Created by me on 04.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var current = 300.0
 
    var body: some View {
        VStack {
            Rectangle()
                .stroke(Color(.red))
                .frame(width: current, height: 200)
                .overlay {
                    Text("\(Text("Марафон").foregroundStyle(.secondary)) \(Text("по SwiftUI").foregroundStyle(.black)) \(Text("«Отцовский Пинок»").font(.title).bold().foregroundStyle(.blue))")
                        .padding(0)
                }
            
            Slider(
                value: $current,
                in: 100...300
            )
            .padding()
        }
    }
}



#Preview {
    ContentView()
}
