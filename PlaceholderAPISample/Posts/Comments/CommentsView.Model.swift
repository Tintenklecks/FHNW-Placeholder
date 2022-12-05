//
//  CommentsView.Model.swift
//  PlaceholderAPISample
//
//  Created by Tobi Wyss on 05.12.22.
//

import Foundation

extension CommentsView {
    class Model: ModelProtocol {
        func fetch(onSuccess: @escaping () -> Void, onError: @escaping (String) -> Void) {
            fetch(postId: 1, onSuccess: onSuccess, onError: onError) //Default userId 1?
        }
        
        var comments: Comments = []

        func fetch(postId: Int, onSuccess: @escaping () -> Void, onError: @escaping (String) -> Void) {
            NetworkService.load(from: PlaceholderEndpoints.comments.url(property: "postId", id: postId), convertTo: Comments.self) {
                self.comments = $0
                onSuccess()
            } onError: { errorDescription in
                onError(errorDescription)
            }
        }
    }
}
