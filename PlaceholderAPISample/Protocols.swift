//
//  Protocolls.swift
//  PlaceholderAPISample
//
//  Created by Ingo Boehme on 23.11.22.
//

import Foundation

// MARK: - ViewModelProtocol

protocol ViewModelProtocol: ObservableObject {
    func update()
}

// MARK: - ModelProtocol

protocol ModelProtocol {
    func fetch(onSuccess: @escaping () -> Void, onError: @escaping (String) -> Void)
}
