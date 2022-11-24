//
//  PostsView.ViewModel.swift
//  PlaceholderAPISample
//
//  Created by Tobi Wyss on 24.11.22.
//

import Foundation

extension PostsView {
    class ViewModel: ViewModelProtocol {
        @Published var posts: Posts = []
        let model = Model()
        
        
        func update() {
            model.fetch {
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
