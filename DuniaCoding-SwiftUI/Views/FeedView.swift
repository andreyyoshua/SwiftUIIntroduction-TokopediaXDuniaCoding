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
        FeedView(
            feedViewModel: FeedViewModel(
                posts: [
                    Post(
                        id: "1",
                        author: PostAuthor(
                            id: "author1",
                            name: "Author",
                            logoURL: ""
                        ),
                        media: [
                            PostMedia(mediaURL: "http://c.files.bbci.co.uk/8991/production/_104871253_1a76b03a-0a86-4ee3-85de-46f66d7f179e.jpg")
                        ],
                        title: "Test Title",
                        subTitle: "Test Subtitle",
                        text: "Test Caption",
                        publishedAt: "2021-04-22T08:13:33+07:00",
                        likeCount: 999,
                        comments: [
                            PostComment(
                                author: PostAuthor(
                                    id: "author1",
                                    name: "Author",
                                    logoURL: ""
                                ),
                                comment: "Test Comment",
                                publishedAt: "2021-04-22T08:13:33+07:00"
                            )
                        ]
                    )
                ]
            )
        )
    }
}
