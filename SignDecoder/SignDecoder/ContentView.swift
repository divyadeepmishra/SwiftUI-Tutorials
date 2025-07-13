//
//  ContentView.swift
//  SignDecoder
//
//  Created by DIVYADEEP MISHRA on 12/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 50){
                Text("Tap to select a sign to Translate")
                    .font(.headline)
                
                ImageGalleryView()
                Spacer()
            }
            .trailTheme()
            .navigationTitle(Text("Sign Decoder"))
        }
    }
}

#Preview {
    ContentView()
}
