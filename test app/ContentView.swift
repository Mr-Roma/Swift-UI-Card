//
//  ContentView.swift
//  test app
//
//  Created by Romario Marcal on 26/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Card Style").font(.title).fontWeight(.bold)
        VStack(alignment: .leading, spacing: 15) {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
                    .shadow(radius: 5)
                
                Image("bg1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 180) // Reduced height
                    .clipped()
                    .cornerRadius(15)
            }
            .frame(height: 180) // Ensure the container fits the image
            
            HStack {
                Text("Betano Timor-Leste")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                HStack(spacing: 2) {
                    ForEach(0..<4) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }
            }
            
            Text("Please come visit us, in the middle of the world")
                .foregroundColor(.gray)
        }
        .padding()
        .background(Rectangle().foregroundColor(.white).cornerRadius(15).shadow(radius: 15))
        .padding()
        
        
        
    }
}

#Preview {
    ContentView()
}

