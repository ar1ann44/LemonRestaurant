//
//  DrinkSizeSwitcher.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 23/09/26.
//

import SwiftUI

struct DrinkSizeSwitcher: View {
    @State private var size = 3
    
    var body: some View {
        VStack{
            ZStack {
                switch size {
                case 1:
                    Text("🧃")
                        .font(.system(size: 100))
                case 2:
                    Text("🧃")
                        .font(.system(size: 140))
                case 3:
                    Text("🧃")
                        .font(.system(size: 170))
                default:
                    Text("🧃")
                        .font(.system(size: 100))
                }
            }
            
            .animation(.easeInOut(duration: 0.3), value:size)
            
            switch size {
            case 1:
                Text("Small Drink")
                    .font(.title)
                
            case 2:
                Text("Medium Drink")
                    .font(.title)
                
            case 3:
                Text("Large Drink")
                    .font(.title)
                
            default:
                Text("Small Drink")
                    .font(.title)
            }
            
            HStack {
                Button("Small"){
                    size = 1
                    
                }
                
                Button("Medium"){
                    size = 2
                    
                }
                
                Button("Large"){
                    size = 3
                    
                }
            }
            .buttonStyle(.glass)
            
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green.opacity(0.3))
    }
}

#Preview {
    DrinkSizeSwitcher()
}
