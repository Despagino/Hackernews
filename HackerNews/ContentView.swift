//
//  ContentView.swift
//  HackerNews
//
//  Created by Gino Tasis on 3/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            List {
                Text("Hello, world!")
                Text("Goodbye. world!")
                
            }
            .navigationTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
    }
}
