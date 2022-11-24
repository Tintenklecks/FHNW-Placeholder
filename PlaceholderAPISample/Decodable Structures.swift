//
//  User.struct.swift
//  PlaceholderAPISample
//
//  Created by Ingo Boehme on 23.11.22.
//

import Foundation

// MARK: - User

struct User: Codable {
    let id: Int
    let name: String

    enum CodingKeys: String, CodingKey {
        case id
        case name = "name"
    }
}

typealias Users = [User]



// MARK: - Post

struct Post: Codable {}

typealias Posts = [Post]

// MARK: - Comment

struct Comment: Codable {}

typealias Comments = [Comment]

// MARK: - Album

struct Album: Codable {}

typealias Albums = [Album]

// MARK: - Photo

struct Photo: Codable {
    var albumId: Int
    var id: Int
    var title: String
    var url: String
    var thumbnailUrl: String
}

typealias Photos = [Photo]

// MARK: - Todo

struct Todo: Codable {
}

typealias Todos = [Todo]
