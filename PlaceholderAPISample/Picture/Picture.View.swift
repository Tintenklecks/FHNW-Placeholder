//
//  PictureView.swift
//  PlaceholderAPISample
//
//  Created by Flavia on 24.11.22.
//

import SwiftUI

struct PictureView: View {
    
    let albumID: Int
    
    @StateObject var viewModel: ViewModel = ViewModel()
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(viewModel.photoURLs, id: \.self) {photoURL in
                AsyncImage(url: photoURL)
                    .padding(2)
//                    .frame(width: 100, height: 100, alignment: .center)
            }
        }
        .onAppear {
            viewModel.update(for: albumID)
        }
    }
}

struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            PictureView(albumID: 2)
        }
    }
}
