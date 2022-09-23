//
//  ContentView.swift
//  DuniaCoding-SwiftUI
//
//  Created by Andrey Yoshua Manik on 12/09/22.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var feedViewModel = FeedViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(feedViewModel.posts) { post in
                    PostView(postViewModel: PostViewModel(post: post))
                        .listRowInsets(EdgeInsets())
                }
            }
            .onAppear(perform: feedViewModel.fetchData)
            .navigationTitle("FEEDS")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
