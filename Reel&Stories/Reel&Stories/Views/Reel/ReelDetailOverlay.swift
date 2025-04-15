//
//  ReelDetailOverlay.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI

struct ReelDetailOverlay: View {
    var reel: Reel
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                HStack {
                    CircleImageView(imageUrl: reel.user.imageUrl, size: 25)
                    Text(reel.user.username)
                }
                Text("Un petit texte qui détaille notre réel")
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            VStack(spacing: 32) {
                Button("", systemImage: "heart", action: {})
                Button("", systemImage: "message", action: {})
                Button("", systemImage: "paperplane", action: {})
                Button("", systemImage: "list.bullet", action: {})
            }.tint(.primary)
                .font(.title)
        }.padding()
    }
}

#Preview {
    ReelDetailOverlay(reel: reel2)
}
