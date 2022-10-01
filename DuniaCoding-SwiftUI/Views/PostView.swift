//
//  PostView.swift
//  DuniaCoding-SwiftUI
//
//  Created by gilang.bhagawadita on 22/09/22.
//

import SwiftUI

struct PostView: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                AsyncImage(url: URL(string: post.author.logoURL)) { image in
                    image.resizable()
                } placeholder: {
                    Text("...")
                }
                .clipShape(Circle())
                .frame(width: 32, height: 32)
                VStack(alignment: .leading) {
                    Text(post.author.name)
                        .bold()
                        .font(.headline)
                    Text(post.subTitle)
                        .font(.subheadline)
                }
            }
            .padding(.horizontal)
            ImageSlider(medias: post.media)
                .frame(height: 400)
            HStack(spacing: 2) {
                Image("like")
                    .resizable()
                    .frame(width: 16, height: 16)
                Text(String(post.likeCount))
            }
            .padding(.horizontal)
            VStack(alignment: .leading) {
                Text(post.author.name)
                    .bold()
                    .font(.footnote)
                Text(post.text)
                    .font(.footnote)
            }
            .padding(.horizontal)
            Text("Lihat Semua Komentar")
                .foregroundColor(.green)
                .bold()
                .padding(.horizontal)
            Text(post.publishedAt.formattedDateFeedX())
                .foregroundColor(.gray)
                .font(.footnote)
                .padding(.horizontal)
        }
        .padding(.vertical)
    }
        
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post.mockDataPosts)
    }
}
