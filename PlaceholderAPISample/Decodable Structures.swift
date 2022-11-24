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
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case username
        case email
        case address
        case phone
        case website
        case company
    }
}

// MARK: - Address

struct Address: Codable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo

    enum CodingKeys: String, CodingKey {
        case street
        case suite
        case city
        case zipcode
        case geo
    }
}

// MARK: - Geo

struct Geo: Codable {
    let lat: String
    let lng: String

    enum CodingKeys: String, CodingKey {
        case lat
        case lng
    }
}

// MARK: - Company

struct Company: Codable {
    let name: String
    let catchPhrase: String
    let bs: String

    enum CodingKeys: String, CodingKey {
        case name
        case catchPhrase
        case bs
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

struct Photo: Codable {
    var albumId: Int
    var id: Int
    var title: String
    var url: String
    var thumbnailUrl: String
}

typealias Photos = [Photo]

// MARK: - Todo

struct Todo: Codable {}

typealias Todos = [Todo]
