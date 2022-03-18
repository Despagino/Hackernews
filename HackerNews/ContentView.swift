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
            
            // for every single "post" in our posts array
            List(posts) { post in
                
                Text(post.title)
                
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


struct Post: Identifiable {
    
    // identifiable allows our list to recognize the order of each of your post objects based on our id
    // for a structure to conform to identifiable it needs to have an id that is a string
    
    let id: String
    let title: String
    
}

let posts = [
Post(id: "1", title: "Hello"),
Post(id: "2", title: "Youre cool I guess"),
Post(id: "3", title: "War is happening")
]
