//
//  ContentView.swift
//  theGathering
//
//  Created by Mark Jensen on 5/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("AceCard copy")
                .resizable()
                .ignoresSafeArea()
            NavigationStack {
                VStack {
                    Spacer()
                    
                    Text("Welcome to The Gathering")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                    
                    NavigationLink(destination: HomeScreen()) {
                        Text("Let's go!")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                }
                .navigationTitle("Home")
            }
        }
    }
}

#Preview {
    ContentView()
}
