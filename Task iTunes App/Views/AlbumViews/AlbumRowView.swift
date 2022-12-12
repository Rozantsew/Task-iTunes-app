//
//  AlbumRowView.swift
//  Task iTunes App
//
//  Created by Mykhailo Rozantsev on 12/12/2022.
//

import SwiftUI

struct AlbumRowView: View {
    
    let album: Album
    
    var body: some View {
        HStack {
            ImageLoadingView(urlString: album.artworkUrl60)
            
            VStack(alignment: .leading) {
                Text(album.collectionName)
                Text(album.artistName + " - " + album.collectionName)
                    .foregroundColor(.gray)
            }.lineLimit(1)
        }
    }
}

struct AlbumRowView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumRowView(album: Album.example())
    }
}
