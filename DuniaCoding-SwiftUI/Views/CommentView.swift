//
//  CommentView.swift
//  DuniaCoding-SwiftUI
//
//  Created by gilang.bhagawadita on 23/09/22.
//

import SwiftUI

struct CommentView: View {
    
    var comments: [PostComment]
    
    var body: some View {
        List {
            ForEach(comments) { comment in
                SingleCommentView(comment: comment)
            }
        }
        .navigationTitle("Comments")
        .listStyle(.plain)
    }
}

struct SingleCommentView: View {
    var comment: PostComment
    
    var body: some View {
        HStack {
//            Image("")
//                .data(url: URL(string: comment.author.logoURL))
//                .resizable()
//                .frame(width: 20, height: 20)
//                .clipShape(Circle())
            AsyncImage(url: URL(string: comment.author.logoURL), content: { image in
                image.resizable()
            }, placeholder: {
                Text("...")
            })
                .frame(width: 20, height: 20)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                HStack{
                    Text(comment.author.name)
                        .font(.caption.bold())
                        .truncationMode(.tail)
                        .lineLimit(1)
                    Text(comment.comment)
                        .font(.caption)
                }
                Text(comment.publishedAt.formattedDateFeedX(isCommentPage: true))
                    .font(.caption)
                    .foregroundColor(.gray.opacity(0.5))
            }
        }
        .padding(.vertical, 4)
    }
    
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(comments: [
            PostComment(author: PostAuthor(id: "1", name: "Nama", logoURL: "https://ecs7.tokopedia.net/img/cache/700/VqbcmM/2022/4/18/a75f0d91-2031-4cc5-9648-546eae520af7.jpg"), comment: "test1", publishedAt: "abcbc"),
            PostComment(author: PostAuthor(id: "2", name: "Nam2a", logoURL: "https://ecs7.tokopedia.net/img/cache/700/VqbcmM/2022/4/18/a75f0d91-2031-4cc5-9648-546eae520af7.jpg"), comment: "test122", publishedAt: "abcbc")
        ])
    }
}
