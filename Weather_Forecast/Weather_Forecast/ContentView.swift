//
//  ContentView.swift
//  Weather_Forecast
//
//  Created by DIVYADEEP MISHRA on 08/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
//            ScrollView(.horizontal) {
                HStack{
                    DayForecast(day: "Mon", isRainy: false, high: 45, low: 30)
                    
                    DayForecast(day: "Tue", isRainy: true, high: 30, low: 20)
                    
                    DayForecast(day: "Wed", isRainy: false, high: 35, low: 25)
                    
//                   DayForecast(day: "Thu", isRainy: false, high: 35, low: 28)
//                    
//                  DayForecast(day: "Fri", isRainy: true, high: 30, low: 23)
//                   
//                  DayForecast(day: "Sat", isRainy: true, high: 30, low: 23)
//                }
           }
            .padding()
            HStack{
                DayForecast(day: "Thu", isRainy: false, high: 35, low: 28)
                
                DayForecast(day: "Fri", isRainy: true, high: 30, low: 23)
                
                DayForecast(day: "Sat", isRainy: true, high: 30, low: 23)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        if isRainy{
            return Color.blue
        }
        else{
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.semibold)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
