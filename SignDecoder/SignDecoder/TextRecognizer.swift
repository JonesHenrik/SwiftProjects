//
//  TextRecognizer.swift
//  SignDecoder
//
//  Created by Henrik Jones on 5/27/25.
//

import Foundation
import SwiftUI
import Vision

struct TextRecognizer {
    var recognizedText = ""
    var observations: [RecognizedTextObservation] = []
    
    init(imageResource: ImageResource) async {
        var request = RecognizeTextRequest()
        
        let image = UIImage(resource: imageResource)
        
        if let imageData = image.pngData(),
            let results = try? await request.perform(on: imageData) {
                observations = results
        }
        
        for observation in observations {
            let candidate = observation.topCandidates(1)
        }
    }
}
