//
//  ContentView.swift
//  Task iTunes App
//
//  Created by Mykhailo Rozantsev on 06/12/2022.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        AlbumSearchView(viewModel: AlbumViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
