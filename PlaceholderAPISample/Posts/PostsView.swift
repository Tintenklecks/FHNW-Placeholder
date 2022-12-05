//
//  PostsView.swift
//  PlaceholderAPISample
//
//  Created by Tobi Wyss on 24.11.22.
//

import SwiftUI

struct PostsView: View {
    let userId: Int
    @StateObject var viewModel = ViewModel()
    @State var showComments = false
    var body: some View {
        GeometryReader { reader in
            VStack{
                ForEach(viewModel.posts) { post in
                    HStack{
                        Text(post.title)
                        Spacer()
                        Button("Comments"){
                            showComments = !showComments
                        }
                    }.bold()
                    Text(post.body).frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .leading
                    ).padding(.bottom, 3.0)
                    if showComments {
                        CommentsView(postId: post.id).frame(
                            width: CGFloat(reader.size.width * 0.8),
                            alignment: .trailing
                        )
                    }
                }
            }.onAppear{
                viewModel.update(userId: userId)
            }
        }
    }
    
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView(userId: 1)
    }
}
