//
//  PictureViewModel.swift
//  PlaceholderAPISample
//
//  Created by Flavia on 24.11.22.
//

import Foundation

extension PictureView {
    class ViewModel: ViewModelProtocol {
        
        let model = Model()
        
        @Published var photoURLs: [URL?] = []
        
        func update() {
            
        }
        
        func update(for albumID: Int) {
            model.fetch() {
                self.photoURLs = self.model.photos.filter{$0.albumId == albumID}.map{URL(string: $0.thumbnailUrl)}
                print(self.photoURLs)
            } onError: { errorString in
                // TODO handle error
            }
        }
        
    }
}
