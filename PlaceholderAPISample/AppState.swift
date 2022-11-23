//
//  AppState.swift
//  PlaceholderAPISample
//
//  Created by Ingo Boehme on 23.11.22.
//

import Foundation

class AppState: ObservableObject {
    var errorMessage: String = "" {
        didSet {
            self.showError = (errorMessage != "")
        }
    }
    
    @Published var showError = false
    
}
