//
//  CircleImageView.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI

struct CircleImageView: View {
    var imageUrl: String
    var size: CGFloat
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { img in
            img
                .image?
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size, height: size)
                .background(.secondary)
                .clipShape(Circle())
            
        }
    }
}

#Preview {
    CircleImageView(imageUrl: users[2].imageUrl, size: 128)
}
