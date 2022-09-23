//
//  FeedViewModel.swift
//  DuniaCoding-SwiftUI
//
//  Created by gilang.bhagawadita on 23/09/22.
//

import SwiftUI

class FeedViewModel: ObservableObject {
    @Published var posts: [Post] = []
    
    func fetchData() {
        guard let url = URL(string: "https://andreyyoshua.com/files/duniacoding-feed.json") else {
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let response = try? JSONDecoder().decode(Data.self, from: data) {
                    DispatchQueue.main.async {
                        self.posts = response.data.items
                    }
                    
                    return
                }
            }
        }.resume()
    }
}
