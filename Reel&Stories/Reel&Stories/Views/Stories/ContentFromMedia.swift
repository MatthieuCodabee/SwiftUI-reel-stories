//
//  ContentFromMedia.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI

struct ContentFromMedia: View {
    var story: Story
    var body: some View {
        switch story.type {
        case .gif: StoryGif(story: story)
        case .image: StoryImage(story: story)
        case .video: StoryVideo(story: story)
        }
    }
}

#Preview {
    ContentFromMedia(story: story3)
}
