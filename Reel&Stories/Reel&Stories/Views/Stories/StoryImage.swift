//
//  StoryImage.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI

struct StoryImage: View {
    var story: Story
    var body: some View {
        AsyncImage(url: URL(string: story.url)) { asyncImage in
            asyncImage
                .image?
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    StoryImage(story: story1)
}
