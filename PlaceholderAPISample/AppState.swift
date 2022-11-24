//
//  AppState.swift
//  PlaceholderAPISample
//
//  Created by Ingo Boehme on 23.11.22.
//
// This is a new comment on the main branch

import Foundation

class AppState: ObservableObject {
    var errorMessage: String = "" {
        didSet {
            self.showError = (errorMessage != "")
        }
    }
    
    @Published var showError = false
    
}
