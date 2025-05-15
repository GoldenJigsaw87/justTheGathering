//
//  HomeScreen.swift
//  theGathering
//
//  Created by Mark Jensen on 5/9/25.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        ZStack{
            Image("AceCard copy")
                .resizable()
                .ignoresSafeArea()
            VStack{
                
                
                Text("Welcome!")
                    .foregroundStyle(Color.blue)
                    .padding()
                    
                Spacer()
                VStack(spacing: 20) {
                Button("Practice (offline)") {
                                       

}
                .foregroundStyle(Color.red)
                    Button("Play with friends") {
                                           

}
                    .foregroundStyle(Color.red)
                    Button("Play with randoms") {
                                           

}
                    .foregroundStyle(Color.red)
                .foregroundStyle(Color.red)
                .padding(.bottom, 100)
                
                }
                    
                    
                }
                    
                }
                
                
            }
        }
    


#Preview {
    HomeScreen()
}
