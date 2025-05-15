//
//  HomeScreen.swift
//  theGathering
//
//  Created by Mark Jensen on 5/9/25.
//

import SwiftUI

struct HomeScreen: View {
    var meetTime: String = "7:00 PM"
    var turnomentName: String = "The Gathering"
    var address: String = "308 Negra Arroyo Lane, Albuquerque, NM 87110"
    var userName: String = "Walter White"
    var theme: String = "Breaking Bad"
    
    var body: some View {
        
        NavigationStack{
        ZStack{
            Image("AceCard copy")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Text("Avalible meetings")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                Spacer()
                Text("\(meetTime)")
                    .font(.caption)
                    .foregroundColor(.red)
                    .background(Color.black)
                Text("\(turnomentName)")
                    .font(.caption)
                    .foregroundColor(.red)
                    .background(Color.black)
                Text("\(address)")
                    .font(.caption)
                    .foregroundColor(.red)
                    .background(Color.black)
               
                  
                        NavigationLink(destination: CreatePage(), label: {
                            Text("Make a Meeting")
                                .font(.caption)
                                .foregroundColor(.red)
                                .padding()
                                .background(Color.black)
                            
                            
                            
                            
                            
                        })
                    
                    
                }
                
            }
              
        }
        
        }
            }
                
                    
                    
                
                    
                
                
                
            
        
    


#Preview {
    HomeScreen()
}
