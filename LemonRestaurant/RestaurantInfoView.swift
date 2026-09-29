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
                
            }
            .navigationTitle("Restaurant Information")
        }
    }
}

#Preview {
    RestaurantInfoView()
}
