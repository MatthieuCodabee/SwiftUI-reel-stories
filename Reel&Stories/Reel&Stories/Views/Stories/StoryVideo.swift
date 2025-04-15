//
//  StoryVideo.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI
import AVKit

struct StoryVideo: View {
    @State var player: AVPlayer?
    var story: Story
    
    var body: some View {
        VideoPlayer(avPlayer: $player)
            .onAppear {
                guard player == nil else { return }
                guard let url = URL(string: story.url) else { return }
                player = AVPlayer(url: url)
                player?.play()
            }
            .onDisappear {
                player = nil
            }
            .ignoresSafeArea()
    }
}

#Preview {
    StoryVideo(story: story3)
}
