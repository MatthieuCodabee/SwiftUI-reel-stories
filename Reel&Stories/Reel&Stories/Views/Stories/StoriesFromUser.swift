//
//  StoriesFromUser.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI

struct StoriesFromUser: View {
    var currentUser: Int
    @Binding var tabIndex: Int
    @State var currentStory: Int = 0
    @State var timer: Timer?
    @State var progress: CGFloat = 0
    @State var timeSpent: CGFloat = 0
    @State var duration: CGFloat = 0
    
    
    var body: some View {
        GeometryReader { geo in
            let user = users[currentUser]
            let stories = user.stories
            let current = stories[currentStory]
            VStack {
                HStack {
                    ForEach(0..<stories.count, id: \.self) { index in
                        if (index < currentStory) {
                            ProgressView(value: 1)
                        } else if (index > currentStory) {
                            ProgressView(value: 0)
                        } else {
                            ProgressView(value: progress)
                        }
                    }
                }
                HStack(alignment: .bottom) {
                    CircleImageView(imageUrl: user.imageUrl, size: 45)
                    Text(user.username)
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .background(content: {
                ContentFromMedia(story: current)
            })
            .onAppear() {
                duration = stories[currentStory].duration
                useTimer(stories: stories.count)
            }
            .onTapGesture { location in
                let point = location.x
                let fullScreen = geo.size.width
                let half = fullScreen / 2
                (point > half) ? next(stories: stories.count): previous(stories: stories.count)
            }
        }
    }
    
    func useTimer(stories: Int) {
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { _ in
            timeSpent += 0.1
            progress = timeSpent / duration
            if (timeSpent >= duration) {
                next(stories: stories)
            }
        })
    }
    
    func next(stories: Int) {
        progress = 0
        timeSpent = 0
        timer?.invalidate()
        if currentStory < stories - 1 {
            currentStory += 1
            useTimer(stories: stories)
        } else {
            withAnimation {
                tabIndex += 1
            }
        }
    }
    
    func previous(stories: Int) {
        progress = 0
        timeSpent = 0
        timer?.invalidate()
        if currentStory > 0 {
            currentStory -= 1
            useTimer(stories: stories)
        } else {
            withAnimation {
                if tabIndex != 0 {
                    tabIndex -= 1
                }
                
            }
        }
    }
}

#Preview {
    StoriesFromUser(currentUser: 1, tabIndex: .constant(1))
}
