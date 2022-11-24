//
//  PostsView.Model.swift
//  PlaceholderAPISample
//
//  Created by Tobi Wyss on 24.11.22.
//

import Foundation


extension PostsView {
    class Model: ModelProtocol {
        func fetch(onSuccess: @escaping () -> Void, onError: @escaping (String) -> Void) {
            fetch(userId: 1, onSuccess: onSuccess, onError: onError) //Default userId 1?
        }
        
        var posts: Posts = []

        func fetch(userId: Int, onSuccess: @escaping () -> Void, onError: @escaping (String) -> Void) {
            NetworkService.load(from: PlaceholderEndpoints.posts.url(property: "userId", id: userId), convertTo: Posts.self) {
                self.posts  = $0
                onSuccess()
            } onError: { errorDescription in
                onError(errorDescription)
            }
        }
    }
}
