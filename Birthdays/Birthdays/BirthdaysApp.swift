//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by DIVYADEEP MISHRA on 17/06/25.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
            
        }
    }
}
