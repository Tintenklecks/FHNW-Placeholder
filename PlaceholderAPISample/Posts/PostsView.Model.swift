//
//  PostsView.Model.swift
//  PlaceholderAPISample
//
//  Created by Tobi Wyss on 24.11.22.
//

import Foundation


extension PostsView {
    class Model: ModelProtocol {
        var posts: Posts = []

        func fetch(onSuccess: @escaping () -> Void, onError: @escaping (String) -> Void) {
            NetworkService.load(from: PlaceholderEndpoints.posts.url, convertTo: Posts.self) {
                self.posts  = $0
                onSuccess()
            } onError: { errorDescription in
                onError(errorDescription)
            }
        }
    }
}
