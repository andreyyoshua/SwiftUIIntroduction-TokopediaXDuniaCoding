//
//  PostView.swift
//  DuniaCoding-SwiftUI
//
//  Created by gilang.bhagawadita on 22/09/22.
//

import SwiftUI

struct PostView: View {
    @ObservedObject var postViewModel: PostViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                AsyncImage(url: URL(string: postViewModel.post.author.logoURL), content: { image in
                    image.resizable()
                }, placeholder: {
                    Text("...")
                })
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
                VStack(alignment: .leading) {
                    Text(postViewModel.post.author.name)
                        .font(.headline.bold())
                        .truncationMode(.tail)
                    Text(postViewModel.post.subTitle)
                        .font(.caption2)
                }
            }
            .padding(.leading)
            ImageSlider(medias: postViewModel.post.media)
                .frame(height: 400)
                .onTapGesture(count: 2) {
                    postViewModel.tapLikeIcon()
                }
            HStack(spacing: 4) {
                Image(postViewModel.likeImageString)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .onTapGesture {
                        postViewModel.tapLikeIcon()
                    }
                Text("\(postViewModel.post.likeCount)")
                    .font(.subheadline)
            }
            .padding(.horizontal, 16)
            VStack(alignment: .leading) {
                Text(postViewModel.post.author.name)
                    .font(.subheadline.bold())
                Text(postViewModel.post.text)
                    .font(.subheadline)
                NavigationLink {
                    CommentView(comments: postViewModel.post.comments)
                } label: {
                    Text("Lihat Semua Komentar")
                        .font(.subheadline.bold())
                        .foregroundColor(.green)
                        .padding(.vertical, 1)
                }
                Text(postViewModel.post.publishedAt.formattedDateFeedX())
                    .font(.caption)
                    .foregroundColor(.gray.opacity(0.5))
            }
            .padding(.horizontal, 16)
            
        }
        .padding(.vertical)
    }
}
