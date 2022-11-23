//
//  NetworkService.swift
//  PlaceholderAPISample
//
//  Created by Ingo Boehme on 20.11.22.
//

import Foundation

// MARK: - NetworkService

enum NetworkService {
    static func load<T: Decodable>(
        from url: URL,
        convertTo type: T.Type,
        onSuccess: @escaping (T) -> Void,
        onError: @escaping (String) -> Void = { _ in }
    ) {
        print(url)
        URLSession.shared.dataTask(with: url) { data, _, error in

            if let error {
                onError("Error: \(error.localizedDescription)")
                return
            }

            guard let data else {
                onError("Error: No data available")
                return
            }

            guard let decodedData = try? JSONDecoder().decode(type.self, from: data) else {
                // zum Debugging
                JSONDecoder.testForDecodableError(type.self, from: data)

                onError("json couldnt be encoded")
                return
            }

            onSuccess(decodedData)
        }
        .resume()
    }
}
