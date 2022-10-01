//
//  ContentView.swift
//  DuniaCoding-SwiftUI
//
//  Created by Andrey Yoshua Manik on 12/09/22.
//

import SwiftUI

struct FeedView: View {
    @State var posts: [Post] = []
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(posts) { post in
                    PostView(post: post)
                }   
            }
            .onAppear(perform: getData)
            .navigationTitle("Feeds")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func getData() {
        if let url = URL(string: "https://andreyyoshua.com/files/duniacoding-feed.json") {
            let request = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: request) { data, _, error in
                if let data = data {
                    if let response = try? JSONDecoder().decode(DataApi.self, from: data) {
                        DispatchQueue.main.async {
                            self.posts = response.data.items
                        }
                    }
                }
            }.resume()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
       FeedView()
    }
}
