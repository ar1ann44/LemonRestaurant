//
//  ReservationForm.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 16/09/26.
//

import SwiftUI

struct ReservationForm: View {
    // constants
    let restaurantName = "Little Lemon"
    let maxGuest = 10
    let maxChildren = 5
    
    // variables
    @State private var userName = ""
    @State private var guestCount = 1
    @State private var userPhone = ""
    @State private var previewText = ""
    @State private var allergies = ""
    @State private var kidsCount = 0
    @State private var occasion = ""
    
    var body: some View {
        Form {
            // header
            Section {
                HStack {
                    Image(systemName: "fork.knife")
                        .foregroundStyle(.green)
                        .font(.title2)
                    
                    VStack(alignment: .leading) {
                        Text(restaurantName)
                            .font(.title3)
                            .foregroundStyle(.secondary)
                        
                        Text("Reservation Form")
                    }
                }
                .padding(.vertical, 4)
            }
            
            // reservation details
            Section(header: Text("Reservation details")) {
                TextField("Name", text: $userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...maxGuest)
                
                // children stepper (starts at 0, up to 5)
                Stepper("Children: \(kidsCount)", value: $kidsCount, in: 0...maxChildren)
                
                // occasion text field
                TextField("Occasion (Birthday, Anniversary, etc.)", text: $occasion)
                    .textInputAutocapitalization(.sentences)
            }
            
            // optional
            Section(header: Text("Optional")) {
                TextField("Allergies", text: $allergies)
                    .textInputAutocapitalization(.sentences)
                    .autocorrectionDisabled(true)
            }
            
            // contact section
            Section(header: Text("Contact details")) {
                TextField("Phone Number", text: $userPhone)
                    .keyboardType(.phonePad)
            }
            
            // actions
            Section(header: Text("Actions")) {
                Button("Preview reservation") {
                    previewText = """
                        Name: \(userName)
                        Guests: \(guestCount)
                        Children: \(kidsCount)
                        Occasion: \(occasion.isEmpty ? "None" : occasion)
                        Allergies: \(allergies.isEmpty ? "None" : allergies)
                        Phone: \(userPhone)
                        """
                }
            }
            
            // preview
            Section(header: Text("Preview")) {
                Text(previewText.isEmpty ? "No preview yet" : previewText)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .padding(.vertical, 4)
                    .textSelection(.enabled)
            }
        }
    }
}

#Preview {
    ReservationForm()
}
