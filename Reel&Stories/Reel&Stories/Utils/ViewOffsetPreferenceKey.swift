//
//  ViewOffsetPreferenceKey.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI

struct ViewOffsetPreferenceKey: PreferenceKey {
    typealias Value = CGRect
    static var defaultValue: CGRect = CGRect.zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}
