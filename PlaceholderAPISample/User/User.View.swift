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
                Text("User List").font(.largeTitle)
                Divider()
                ScrollView {
                ForEach(viewModel.users) {
                    user in
                    UserCard(user: user)
                }
                Spacer()
            }
            .padding()
            .onAppear {
                viewModel.update()
            }
        }
    }
    
    struct UserCard: View {
        var user: SingleUser
        var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    Text(user.name)
                        .foregroundColor(.primary)
                    Text(" (id: \(user.id))").font(.body)
                        .foregroundColor(.secondary)
                    Divider()
                }
                Spacer()
                Button("i", action: {}).padding(8).border(Color.green)
                Button("i", action: {}).padding(8).border(Color.green)
                Button("i", action: {}).padding(8).border(Color.green)
                Button("i", action: {}).padding(8).border(Color.green)

            }
        }
    }
    
    // MARK: - ContentView_Previews
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            UserView()
        }
    }
}
