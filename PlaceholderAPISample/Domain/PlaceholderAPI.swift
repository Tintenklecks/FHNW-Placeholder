//
//  PlaceholderAPI.swift
//  PlaceholderAPISample
//
//  Created by Ingo Boehme on 23.11.22.
//

import Foundation

// MARK: - PlaceholderEndpoints

enum PlaceholderEndpoints: String {
    case posts = "/posts"
    case comments = "/comments"
    case albums = "/albums"
    case photos = "/photos"
    case todos = "/todos"
    case users = "/users"
}

extension PlaceholderEndpoints { // API URLs
    private var host: URL {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com") else {
            fatalError("Index Is Invalid")
        }
        return url
    }

    var url: URL {
        return self.host.appending(path: self.rawValue)
    }

    func url(id: Int) -> URL {
        let url = self.url
        return url.appending(path: "/\(id)")
    }
}
