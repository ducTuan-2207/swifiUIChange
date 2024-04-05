//
//  ContentView.swift
//  SwiftUIChanges
//
//  Created by macOS on 01/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    var body: some View {
        VStack {
            Text("\(count)")
            Button("Increment"){
                count += 2
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
