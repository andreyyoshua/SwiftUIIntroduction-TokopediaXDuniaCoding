//
//  Feed.swift
//  DuniaCoding-SwiftUI
//
//  Created by gilang.bhagawadita on 22/09/22.
//

import Foundation

internal struct Data: Codable {
    internal let data: Feed
}

internal struct Feed: Codable {
    internal let items: [Post]
}

internal struct Post: Codable, Identifiable {
    internal let id: String
    internal let author: PostAuthor
    internal let media: [PostMedia]
    internal let title: String
    internal let subTitle: String
    internal let text: String
    internal let publishedAt: String
    internal var likeCount: Int
    internal let comments: [PostComment]
}

internal struct PostAuthor: Codable {
    internal let id: String
    internal let name: String
    internal let logoURL: String
}

internal struct PostMedia: Codable, Identifiable {
    internal let id = UUID().uuidString
    internal let mediaURL: String
    
    internal enum CodingKeys: String, CodingKey {
        case mediaURL
    }
    
    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        mediaURL = try container.decode(String.self, forKey: .mediaURL)
    }
}

internal struct PostComment: Codable {
    internal let author: PostAuthor
    internal let comment: String
    internal let publishedAt: String
}
