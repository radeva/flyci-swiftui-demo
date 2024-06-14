//
//  ContentView.swift
//  FlyCIiOSDemo
//
//  Created by Veselina Radeva on 13.06.24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]

    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    @State private var selected = "Baseball"
    @State private var id = 1
    
    var body: some View {
        VStack {
            Text("Your next activity is")
                    .font(.largeTitle.bold())
            Spacer()
            
            VStack {
               Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                            Image(systemName: "figure.\(selected.lowercased())")
                                .font(.system(size: 144))
                                    .foregroundColor(.white)
                        )
            }
            .transition(.slide)
            .id(id)
            .padding()
            
            Text("\(selected)!").accessibilityIdentifier("activityText")
                .font(.title)

            Spacer()
            
            Button("Next activity") {
                withAnimation(.easeInOut(duration: 1)) {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                }
            }
            .buttonStyle(.borderedProminent)

        }
    }
}

#Preview {
    ContentView()
}
