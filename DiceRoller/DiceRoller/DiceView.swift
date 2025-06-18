//
//  DiceView.swift
//  DiceRoller
//
//  Created by DIVYADEEP MISHRA on 09/06/25.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Button {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            } label: {
                Image(systemName: "die.face.\(numberOfPips).fill")
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(.black, .white)
            }
        }
    }
}

#Preview {
    DiceView()
}

//import SwiftUI
//
//
//struct DiceView: View {
//    @State private var numberOfPips: Int = 1
//    
//    var body: some View {
//        VStack {
//            Image(systemName: "die.face.\(numberOfPips).fill")
//                .resizable()
//                .frame(maxWidth: 100, maxHeight: 100)
//                .aspectRatio(1, contentMode: .fit)
//                .foregroundStyle(.black, .white)
//            
//                .padding()
//            Button("Roll") {
//                withAnimation {
//                    numberOfPips = Int.random(in: 1...6)
//                }
//            }
//            .buttonStyle(.bordered)
//            
//        }
//    }
//}
//
//
//#Preview {
//    DiceView()
//}
