import Foundation
import SwiftUI
import Vision

struct TextRecognizer{
    var recognizeText = ""
    
    var observations: [RecognizedTextObservation] = []
    
    init(imageResource: ImageResource) async {
        var request = RecognizeTextRequest()
        request.recognitionLevel = .accurate

        let image = UIImage(resource: imageResource)
        
        if let imageData = image.pngData(),
           let result = try? await request.perform(on: imageData){
            observations = result
        }
        
        for observation in observations {
            let candidate = observation.topCandidates(1)
            
            if let observedText = candidate.first?.string {
                recognizeText += "\(observedText) "
            }
        }
    }
}
