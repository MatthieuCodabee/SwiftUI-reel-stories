//
//  StoryView.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI

struct StoryView: View {
    @Environment(\.dismiss) var dismiss
    @State var index: Int
    var body: some View {
        TabView(selection: $index,
                content:  {
            ForEach(0..<users.count, id: \.self) { currentUser in
                GeometryReader { geometry in
                    StoriesFromUser(currentUser: currentUser, tabIndex: $index)
                        .tag(currentUser)
                        .rotation3DEffect(
                            angle(geometry: geometry),
                            axis: (x: 0.0, y: 1.0, z: 0.0),
                            anchor: geometry.frame(in: .global).minX > 0 ? .leading : .trailing,
                            perspective: 2
                    )
                }
            }
        })
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .transition(.move(edge: .bottom))
        .toolbar(.hidden)
        .overlay(
            Button("", systemImage: "xmark") {
                dismiss()
            }.tint(.primary),
            alignment: .topTrailing
        )
    }
    
    func angle(geometry: GeometryProxy) -> Angle {
        let minX = geometry.frame(in: .global).minX
        let globalSize = geometry.size.width
        let rotationProgression = minX / globalSize
        let degree = rotationProgression * 45
        return Angle(degrees: degree)
    }
}

#Preview {
    StoryView(index: 0)
}
