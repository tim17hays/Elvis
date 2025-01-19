//
//  ContentView.swift
//  Elvis
//
//  Created by Tim Hays on 1/18/25.
//

import SwiftUI

struct ContentView: View {
    @State private var imageName = ""
    @State private var message = ""
    var body: some View {
        VStack {
        
            Text("What's so funny 'bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
               
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
    
            Spacer()
            
            HStack {
                Button("Peace"){
                    message = "Peace"
                    imageName = "peacesign"
                }
                Button("Love"){
                    message = "Love"
                    imageName = "heart"
                }
                Button("Understanding"){
                    message = "Understanding"
                    imageName = "lightbulb"
                }
            }
                .buttonStyle(.borderedProminent)
                .font(.title2)
                .tint(.purple)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
