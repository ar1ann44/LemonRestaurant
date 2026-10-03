//
//  RestaurantInfoView.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 28/09/26.
//

import SwiftUI

struct RestaurantInfoView: View {
    let socialMedia:[String:String] = [
        "Instagram": "@lemon",
        "Facebook": "facebook.com/",
        "Tiktok": "@lemon.restaurant",
    ]
    
    let hours:[String:String] = [
        "Monday": "12:00 - 17:00",
        "Tuesday": "12:00 - 17:00",
        "Wednesday": "CLOSED",
        "Thursday": "12:00 - 17:00",
        "Friday": "12:00 - 20:00",
        "Saturday": "12:00 - 20:00",
        "Sunday": "12:00 - 20:00",
    ]
    
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Social Media")){
                    ForEach(Array(socialMedia), id:\.key) { key, value in
                        HStack {
                            Text(key)
                                .font(.headline)
                            
                            Spacer()
                            
                            Text(value)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                
                Section(header: Text("Hours")){
                    ForEach(Array(hours), id:\.key) { key, value in
                        HStack {
                            Text(key)
                                .font(.headline)
                            
                            Spacer()
                            
                            Text(value)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                
            }
            .navigationTitle("Restaurant Information")
        }
    }
}

#Preview {
    RestaurantInfoView()
}
