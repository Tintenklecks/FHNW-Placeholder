//
//  PostsView.swift
//  PlaceholderAPISample
//
//  Created by Tobi Wyss on 24.11.22.
//

import SwiftUI

struct PostsView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack{
            ForEach(viewModel.posts) { post in
                Text(post.title).padding(.vertical, 1.0)
            }
        }.onAppear{
            viewModel.update()
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
