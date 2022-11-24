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

struct Album: Codable {
    var userId: Int
    var id: Int
    var title: String
}

typealias Albums = [Album]

// MARK: - Photo

struct Photo: Codable {}

typealias Photos = [Photo]

// MARK: - Todo

struct Todo: Codable {
}

typealias Todos = [Todo]
