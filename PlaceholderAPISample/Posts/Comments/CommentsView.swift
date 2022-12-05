//
//  PostsView.swift
//  PlaceholderAPISample
//
//  Created by Tobi Wyss on 24.11.22.
//

import SwiftUI

struct CommentsView: View {
    let postId: Int
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack{
            ForEach(viewModel.comments) { comment in
                Text(comment.body).padding(.top, CGFloat(10))
                Text(comment.name).italic().foregroundColor(.gray)
                Divider().padding(.bottom, CGFloat(1))
            }.frame(
                maxWidth: .infinity,
                alignment: .leading
            )
        }.onAppear{
            viewModel.update(postId: postId)
        }
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView(postId: 1)
    }
}
