//
//  DetailView.swift
//  HackerNews
//
//  Created by Gino Tasis on 3/21/22.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    
    let url: String?
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url:"https://www.google.com")
    }
}

struct WebView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        <#code#>
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        <#code#>
    }
    
    
}
