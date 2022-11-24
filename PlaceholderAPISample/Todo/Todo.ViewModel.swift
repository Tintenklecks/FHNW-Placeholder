//
//  Todo.ViewModel.swift
//  PlaceholderAPISample
//
//  Created by Ingo Boehme on 24.11.22.
//

import Foundation

extension TodoView {
    class ViewModel: ViewModelProtocol {
        
        
        
        func update() {
            let model = Model()
            model.fetch {
                // success
               // füllen  model.todos
            } onError: { errorString in
                print(errorString)
            }

        }
        
        
    }
}
