//
//  ToDo.swift
//  PlaceholderAPISample
//
//  Created by Ingo Boehme on 24.11.22.
//

import Foundation

extension TodoView {
    class Model: ModelProtocol {
        
        var todos: Todos = []
        
        func fetch(onSuccess: @escaping () -> Void, onError: @escaping (String) -> Void) {
            
            NetworkService.load(from: PlaceholderEndpoints.todos.url, convertTo: Todos.self) { todos in
                 
                self.todos = todos
                onSuccess()
                
                
            }
        }
        
        
    }
}
