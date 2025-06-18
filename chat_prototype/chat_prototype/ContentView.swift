//
//  ContentView.swift
//  chat_prototype
//
//  Created by DIVYADEEP MISHRA on 08/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .padding()
            Text("I am Divyadeep Mishra")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                .padding()
            HStack {
                Text("Knock Knock")
                    .padding()
                    .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))
                    .padding()
                Text("Who's there?")
                    .padding()
                    .background(Color.green, in: RoundedRectangle(cornerRadius: 8))
                    .padding()
                
            }
        }
                .padding()
    }
}

#Preview {
    ContentView()
}
