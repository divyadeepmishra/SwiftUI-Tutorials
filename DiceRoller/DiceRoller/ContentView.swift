//
//  ContentView.swift
//  DiceRoller
//
//  Created by DIVYADEEP MISHRA on 09/06/25.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps()/*.bold()*/)
                .foregroundStyle(.white)
            HStack{
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
                
            }
            
            HStack{
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    if numberOfDice > 1 {
                        withAnimation{
                            numberOfDice -= 1
                        }
                    }
                }
                .symbolRenderingMode(.palette)
                .foregroundStyle(.red, .white)
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    if numberOfDice < 5 {
                        withAnimation{
                            numberOfDice += 1
                        }
                    }
                }
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .white)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
