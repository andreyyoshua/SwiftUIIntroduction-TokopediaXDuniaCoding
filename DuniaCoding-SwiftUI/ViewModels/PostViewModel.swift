//
//  PostViewModel.swift
//  DuniaCoding-SwiftUI
//
//  Created by gilang.bhagawadita on 23/09/22.
//

import SwiftUI

class PostViewModel: ObservableObject {
    @Published var post: Post
    @Published var isLike: Bool = false
    @Published var likeImageString = "like"
    
    init(post: Post) {
        self.post = post
    }
    
    func tapLikeIcon() {
        isLike.toggle()
        
        if isLike {
            likeImageString = "like-fill"
            post.likeCount += 1
        } else {
            likeImageString = "like"
            if post.likeCount > 0 {
                post.likeCount -= 1
            }
        }
    }
}
