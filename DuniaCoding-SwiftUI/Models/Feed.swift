//
//  Feed.swift
//  DuniaCoding-SwiftUI
//
//  Created by gilang.bhagawadita on 22/09/22.
//

import Foundation

struct DataApi: Codable {
    let data: Feed
}

struct Feed: Codable {
    let items: [Post]
}

struct Post: Codable, Identifiable {
    let id: String
    let author: PostAuthor
    let media: [PostMedia]
    let title: String
    let subTitle: String
    let text: String
    let publishedAt: String
    var likeCount: Int
    let comments: [PostComment]
}

struct PostAuthor: Codable {
    let id: String
    let name: String
    let logoURL: String
}

struct PostMedia: Codable, Identifiable {
    let id = UUID().uuidString
    let mediaURL: String
    
    enum CodingKeys: String, CodingKey {
        case mediaURL
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        mediaURL = try container.decode(String.self, forKey: .mediaURL)
    }
    
    init(mediaURL: String) {
        self.mediaURL = mediaURL
    }
}

struct PostComment: Identifiable {
    let id = UUID().uuidString
    let author: PostAuthor
    let comment: String
    let publishedAt: String
}

extension PostComment: Codable {
    enum CodingKeys: String, CodingKey {
        case author
        case comment
        case publishedAt
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        author = try container.decode(PostAuthor.self, forKey: .author)
        comment = try container.decode(String.self, forKey: .comment)
        publishedAt = try container.decode(String.self, forKey: .publishedAt)
    }
}

extension Post {
    static var mockDataPosts =
        Post(
            id: "1",
            author: PostAuthor(
                id: "author1",
                name: "author name",
                logoURL: ""
            ),
            media: [
                PostMedia(mediaURL: "")
            ],
            title: "Test Title",
            subTitle: "Test Subtitle",
            text: "Test Caption",
            publishedAt: "Test publishedAt",
            likeCount: 999,
            comments: [
                PostComment(
                    author: PostAuthor(
                        id: "author1",
                        name: "author name",
                        logoURL: ""
                    ),
                    comment: "Test Comment",
                    publishedAt: "Test publishedAt"
                )
            ]
        )
}
