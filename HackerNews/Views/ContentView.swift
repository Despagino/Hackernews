//
//  ContentView.swift
//  HackerNews
//
//  Created by Gino Tasis on 3/18/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var netWorkManager = NetworkManager()
    
    
    var body: some View {
        NavigationView {
            
            // for every single "post" in our posts array
            List(netWorkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Hacker News")
        }
        .onAppear {
            netWorkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
    }
}


