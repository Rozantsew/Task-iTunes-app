//
//  ImageLoadingView.swift
//  Task iTunes App
//
//  Created by Mykhailo Rozantsev on 12/12/2022.
//

import SwiftUI

struct ImageLoadingView: View {
    
    let urlString: String
    
    var body: some View {
        AsyncImage(url: URL(string: urlString)){ image in
            image
                .resizable()
                .border(Color(white: 0.8))
        } placeholder: {
            ProgressView()
        }
        .frame(width: 60, height: 60)
        .padding(0)
    }
}
