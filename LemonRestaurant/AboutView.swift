//
//  AboutView.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 16/09/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("About Little Lemon")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.green)

            Text("Little Lemon is a cozy Mediterranean restaurant serving fresh and healthy dishes. Our goal is to bring people together through great food and warm hospitality.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)

            HStack(spacing: 20) {
                Image(systemName: "fork.knife")
                Image(systemName: "leaf")
                Image(systemName: "map")
            }
            .font(.title2)
            .foregroundColor(.yellow)
        }
        .padding()
    }
}

#Preview {
    AboutView()
}
