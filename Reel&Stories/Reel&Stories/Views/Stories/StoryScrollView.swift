//
//  StoryScrollView.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI

struct StoryScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<users.count, id: \.self) { index in
                    NavigationLink {
                        StoryView(index: index)
                    } label: {
                        CircleImageView(
                            imageUrl: users[index].imageUrl,
                            size: 50
                        )
                    }

                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    StoryScrollView()
}
