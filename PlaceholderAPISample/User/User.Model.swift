//
//  Model.swift
//  PlaceholderAPISample
//
//  Created by Ingo Boehme on 21.11.22.
//

import Foundation

extension UserView {
    class Model: ModelProtocol {
        var users: Users = []

        func fetch(onSuccess: @escaping () -> Void, onError: @escaping (String) -> Void) {
            NetworkService.load(from: PlaceholderEndpoints.users.url, convertTo: Users.self) {
                self.users = $0
                onSuccess()
            } onError: { errorDescription in
                onError(errorDescription)
            }
        }
    }
}
