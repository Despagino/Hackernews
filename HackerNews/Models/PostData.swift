//
//  PostData.swift
//  HackerNews
//
//  Created by Gino Tasis on 3/18/22.
//

import Foundation

struct Results: Codable {
    var hits: [Post]
}

struct Post: Codable, Identifiable {
    
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
    
}

