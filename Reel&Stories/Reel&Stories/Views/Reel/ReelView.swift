//
//  ReelView.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI
import AVKit

struct ReelView: View {
    @State var avPlayer: AVPlayer?
    @State var avPlayerLooper: AVPlayerLooper?
    var reel: Reel
    
    var body: some View {
        GeometryReader { geometry in
            let frame = geometry.frame(in: .scrollView(axis: .vertical))
            VideoPlayer(avPlayer: $avPlayer)
                .onAppear {
                    guard avPlayer == nil else { return }
                    guard let url = URL(string: reel.url) else { return }
                    avPlayer = loop(url: url)
                }
                .onDisappear {
                    avPlayer = nil
                }
                .preference(key: ViewOffsetPreferenceKey.self, value: frame)
                .onPreferenceChange(ViewOffsetPreferenceKey.self, perform: { value in
                    shouldPlayVideo(value: value)
                })
                .overlay(alignment: .bottom) {
                    ReelDetailOverlay(reel: reel)
                }
        }
    }
    
    func shouldPlayVideo(value: CGRect) {
        let minPositive = value.minY
        let minNegative = -value.minY
        let half = value.height / 2
        let isVisible = (minPositive < half) && (minNegative < half)
        isVisible ? avPlayer?.play() : avPlayer?.pause()
    }
    
    func loop(url: URL) -> AVQueuePlayer {
        let templateItem = AVPlayerItem(url: url)
        let avPlayerQueue = AVQueuePlayer(playerItem: templateItem)
        avPlayerLooper = AVPlayerLooper(player: avPlayerQueue, templateItem: templateItem)
        return avPlayerQueue
    }
}

#Preview {
    ReelView(reel: reel1)
}
