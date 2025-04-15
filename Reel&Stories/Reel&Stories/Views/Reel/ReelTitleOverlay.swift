//
//  ReelTitleOverlay.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI

struct ReelTitleOverlay: View {
    var body: some View {
        HStack {
            Text("Réels")
                .bold()
                .font(.title)
            Spacer()
            Image(systemName: "camera")
                .font(.title)
        }.padding()
    }
}

#Preview {
    ReelTitleOverlay()
}
