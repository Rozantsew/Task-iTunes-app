//
//  AlbumSearchView.swift
//  Task iTunes App
//
//  Created by Mykhailo Rozantsev on 07/12/2022.
//

import SwiftUI

struct AlbumSearchView: View {
    
    @ObservedObject var viewModel: AlbumViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.albums) { album in
                AlbumRowView(album: album)
            }
            .searchable(text: $viewModel.searchTerm)
            .navigationTitle("Search Album")
        }
    }
}

struct AlbumSearchView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumSearchView(viewModel: AlbumViewModel()
        )
    }
}
