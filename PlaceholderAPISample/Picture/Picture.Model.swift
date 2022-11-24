//
//  PictureModel.swift
//  PlaceholderAPISample
//
//  Created by Flavia on 24.11.22.
//

import Foundation

extension PictureView {
    class Model: ModelProtocol {
        
        var photos: Photos = []
        
        func getPhotos(for album: Album) -> Photos {
            return photos.filter{$0.albumId == album.id}
        }
        
        func fetch(onSuccess: @escaping () -> Void, onError: @escaping (String) -> Void) {
            NetworkService.load(from: PlaceholderEndpoints.photos.url, convertTo: Photos.self) { photos in
                self.photos = photos
                onSuccess()
            }
        }
        
    }
}
