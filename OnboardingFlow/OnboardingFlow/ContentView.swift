//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by DIVYADEEP MISHRA on 08/06/25.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            
            FeaturePage()
            
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        
    }
}

#Preview {
    ContentView()
}
