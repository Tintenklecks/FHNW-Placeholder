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
    var body: some View {
        VStack{
            ForEach(viewModel.posts) { post in
                HStack{
                    Text(post.title)
                    Spacer()
                    Button("Comments"){
                        
                    }
                }.bold()
                Text(post.body).padding(.bottom, 3.0)
            }
        }.onAppear{
            viewModel.update(userId: userId)
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView(userId: 1)
    }
}
