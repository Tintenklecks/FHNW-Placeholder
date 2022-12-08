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
    @State private var showComments = false
    var body: some View {
        ScrollView{
            VStack{
                ForEach(viewModel.posts) { post in
                    PostView(post: post)
                        
                }.padding()
            }
            
            
            .onAppear{
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
