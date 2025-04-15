//
//  GifHelper.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import SwiftUI
import UIKit
import WebKit

struct GifHelper: UIViewRepresentable {
    let urlString: String
    
    func makeUIView(context: Context) -> UIImageView {
        let imageView = UIImageView()
        guard let url = URL(string: urlString) else { return imageView }
        
        if let gifData = try? Data(contentsOf: url), let source = CGImageSourceCreateWithData(gifData as CFData, nil) {
            let gifDuration = CGFloat(GifUtils.gifDuration(gif: source))
            let images = GifUtils.getImages(gif: source)
            imageView.animationImages = images
            imageView.animationDuration = gifDuration
            imageView.startAnimating()
        }
        
        return imageView
    }
    
    func updateUIView(_ uiView: UIImageView, context: Context) {
        //
    }
}

class GifUtils {
    
    static func getImages(gif: CGImageSource) -> [UIImage] {
        var images: [UIImage] = []
        let frameNumber = CGImageSourceGetCount(gif)
        for i in 0..<frameNumber {
            if let frame = CGImageSourceCreateImageAtIndex(gif, i, nil) {
                let image = UIImage(cgImage: frame)
                images.append(image)
            }
        }
        
        return images
    }
    
    static func gifDuration(gif: CGImageSource) -> Double {
        let numberFrames = CGImageSourceGetCount(gif)
        var duration: Double = 0
        
        for i in 0..<numberFrames {
            if let properties = CGImageSourceCopyPropertiesAtIndex(gif, i, nil) as? [String: Any], 
                let gifProperties = properties[kCGImagePropertyGIFDictionary as String] as? [String: Any],
               let frameDuration = gifProperties[kCGImagePropertyGIFDelayTime as String] as? Double {
                duration += frameDuration
            }
        }
        
        return duration
    }
    
}
