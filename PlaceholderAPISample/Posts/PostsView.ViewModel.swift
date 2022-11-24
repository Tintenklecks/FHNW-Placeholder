//
//  PostsView.ViewModel.swift
//  PlaceholderAPISample
//
//  Created by Tobi Wyss on 24.11.22.
//

import Foundation

extension PostsView {
    class ViewModel: ViewModelProtocol {
        func update() {
            update(userId: 1) //Default userId 1?
        }
        
        @Published var posts: Posts = []
        let model = Model()
        
        func update(userId: Int) {
            model.fetch(userId: userId) {
                DispatchQueue.main.async {
                    self.posts = self.model.posts
                }
            }
            
        onError: {errorDescription in
            print(errorDescription)
        }
        }
    }
}
