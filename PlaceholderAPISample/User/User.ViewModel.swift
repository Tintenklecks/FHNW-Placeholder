//
//  ViewModel.swift
//  PlaceholderAPISample
//
//  Created by Ingo Boehme on 21.11.22.
//

import Foundation

extension UserView {
    class ViewModel: ViewModelProtocol {
        @Published var users: [SingleUser] = []
        let model = Model()

        func update() {
            model.fetch {
                DispatchQueue.main.async {
                    self.users = self.model.users.map {
                        SingleUser(id: $0.id, name: $0.name)
                    }
                }

            } onError: { errorDescription in
                print(errorDescription)
            }
        }
    }

    struct SingleUser: Identifiable {
        let id: Int
        let name: String
    }
}
