//
//  PostsView.swift
//  PlaceholderAPISample
//
//  Created by Tobi Wyss on 24.11.22.
//

import SwiftUI

struct PostView: View {
    var post: Post
    @State private var showComments = false
    var body: some View {
        VStack{
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
            )
            if showComments {
                HStack {
                    CommentsView(postId: post.id)
                        .padding(.leading, 40)
                }
                
                
            }

        }.padding()
        
    }
    
}

