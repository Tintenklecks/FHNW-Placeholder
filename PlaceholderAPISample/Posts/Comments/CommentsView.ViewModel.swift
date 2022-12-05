//
//  CommentsView.ViewModel.swift
//  PlaceholderAPISample
//
//  Created by Tobi Wyss on 05.12.22.
//

import Foundation

extension CommentsView {
    class ViewModel: ViewModelProtocol {
        func update() {
            update(postId: 1) //Default userId 1?
        }
        
        @Published var comments: Comments = []
        let model = Model()
        
        func update(postId: Int) {
            model.fetch(postId: postId) {
                DispatchQueue.main.async {
                    self.comments = self.model.comments
                }
            }
            
        onError: {errorDescription in
            print(errorDescription)
        }
        }
    }
}
