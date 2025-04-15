//
//  StoryGif.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI

struct StoryGif: View {
    var story: Story
    var body: some View {
        GifHelper(urlString: story.url).ignoresSafeArea()
    }
}

#Preview {
    StoryGif(story: story2)
}
