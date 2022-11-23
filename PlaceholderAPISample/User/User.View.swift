//
//  ContentView.swift
//  PlaceholderAPISample
//
//  Created by Ingo Boehme on 20.11.22.
//

import SwiftUI

// MARK: - UserView

struct UserView: View {
    @StateObject var viewModel = ViewModel()

    var body: some View {
        VStack {
            Text("\(viewModel.users.count) Users")
            Divider()
            ForEach(viewModel.users) {
                user in
                HStack {
                    Text(user.name)
                        .foregroundColor(.primary)
                    Text(" (id: \(user.id))")
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding()
        .onAppear {
            viewModel.update()
        }
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
