//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Gino Tasis on 3/18/22.
//

import Foundation

class NetworkManager: ObservableObject {
    
    func fetchData() {
        
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { data, response, error in
                let decoder = JSONDecoder()
                if error == nil {
                    if let safeData = data {
                        do {
                         let results = try decoder.decode(Results.self, from: safeData)
                            
                             } catch {
                                 print(error)
                             }
                    }
                }
                
            }
            task.resume()
        }
        
    }
    
}
