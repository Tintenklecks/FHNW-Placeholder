//
//  Todo.swift
//  PlaceholderAPISample
//
//  Created by Tobi Wyss on 24.11.22.
//

import Foundation


struct Todo: Codable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
//    {
//        "userId": 1,
//        "id": 1,
//        "title": "delectus aut autem",
//        "completed": false
//      },
}
