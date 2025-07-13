import SwiftUI

struct TextRecognitionView: View {
    let imageResource: ImageResource
    @State private var textRecognizer: TextRecognizer?
    
    var body: some View {
        VStack{
            Image(imageResource)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .task {
                    textRecognizer = await TextRecognizer(imageResource: imageResource)
                }
            Spacer()
            
            TranslationView(text: textRecognizer?.recognizeText ?? "", isProcessing: isProcessing)
        }
        .padding()
        .trailTheme()
        .navigationTitle("Sign Info")
    }
    
    private var isProcessing: Bool {
        textRecognizer == nil
    }
}

#Preview {
    NavigationStack {
        TextRecognitionView(imageResource: .sign1)
            .navigationBarTitleDisplayMode(.inline)
    }
}
