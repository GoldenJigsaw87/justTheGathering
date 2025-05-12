//
//  friendWaitingRoom.swift
//  theGathering
//
//  Created by Mark Jensen on 5/9/25.
//



//This is the waiting room that will have an invite code linked for friend only matches.
//Meaning in theory no one should be allowed access to this page without either being host or a friend of the host.

import SwiftUI

struct friendWaitingRoom: View {
    var body: some View {
        ZStack{
            Image("AceCard copy")
                .resizable()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    friendWaitingRoom()
}
