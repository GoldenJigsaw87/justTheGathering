//
//  CreatePage.swift
//  theGathering
//
//  Created by Mark Jensen on 5/13/25.
//


import SwiftUI

// Model for decoding response
struct MeetingData: Codable {
    var location: String
    var time: String
    var name: String
    var email: String
    var phone: String
}

struct CreatePage: View {
    
    @State private var location: String = ""
    @State private var time: String = ""
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    
    @State private var resultName: String = ""
    @State private var errorMessage: String = ""
    
    var body: some View {
        ZStack {
            Image("AceCard copy")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 15) {
                Text("Create Meeting")
                    .font(.title)
                    .bold()
                
                TextField("Location", text: $location)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Time", text: $time)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Phone", text: $phone)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Submit") {
                    Task {
                        do {
                            let meeting = try await getMeetingData()
                            resultName = meeting.name
                        } catch {
                            errorMessage = "Failed to fetch data: \(error.localizedDescription)"
                        }
                    }
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                if !resultName.isEmpty {
                    Text("Fetched name: \(resultName)")
                        .padding()
                }
                
                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .padding()
                }

                Spacer()
            }
            .padding()
        }
    }

    // Async function to get meeting data
    func getMeetingData() async throws -> MeetingData {
        enum WebRequestError: Error {
            case invalidResponse
        }

        guard let url = URL(string: "http://localhost:3000/") else {
            throw WebRequestError.invalidResponse
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw WebRequestError.invalidResponse
        }

        let decoded = try JSONDecoder().decode(MeetingData.self, from: data)
        return decoded
    }
}

#Preview {
    CreatePage()
}
