//
//  MenuView.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 30/09/26.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Lemon Restaurant")
                    .font(.system(size: 50))
                    .foregroundStyle(Color.blue)
                    .bold()
                    .multilineTextAlignment(.center)
                
                Text("Your favorite food")
                    .font(.system(size: 20, weight: .semibold))
                
                Image(systemName: "fork.knife")
                    .font(.system(size: 100))
                    .foregroundStyle(Color.blue)
                
                //here the menu buttons
                VStack {
                    NavigationLink {
                        DrinkSizeSwitcher()
                    } label: {
                        MenuButton(title: "Drink Size", icon: "cup.and.saucer.fill")
                    }
                    
                    NavigationLink {
                        DataListView()
                    } label: {
                        MenuButton(title: "Data List View", icon: "list.bullet")
                    }
                    
                    NavigationLink {
                        ReservationForm()
                    } label: {
                        MenuButton(title: "Reservation Form", icon: "calendar.badge.clock")
                    }
                    
                    NavigationLink {
                        RestaurantInfoView()
                    } label: {
                        MenuButton(title: "Restaurant Info", icon: "info.app")
                    }
                    
                }
                
            }
            
            // .navigationTitle("Menu View")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.blue.opacity(0.15))
        }
        
        
    }
    struct MenuButton: View {
        let title: String
        let icon: String
        
        var body: some View {
            HStack {
                Image(systemName: icon)
                    .font(.system(size: 28))
                    .foregroundStyle(Color.white)
                Text(title)
                    .font(.headline)
                    .foregroundStyle(Color.white)
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal, 30)
            
        }
    }
}

#Preview {
    MenuView()
}
