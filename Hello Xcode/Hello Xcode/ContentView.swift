//
//  ContentView.swift
//  Hello Xcode
//
//  Created by Mauricio Matango on 21/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //backrhoun color
            LinearGradient(
                colors:[Color.blue, Color.white, Color.indigo.opacity(0.4)],
                startPoint: .top,
                endPoint: .bottomTrailing
            )
                .ignoresSafeArea()//full screen color applied
            
            VStack {
                Image(systemName: "figure.skiing.downhill")
                    .imageScale(.large)
                    
                
                Text("Welcome to iOS development !")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                Text("First App")
                    .font(.title)
                    .fontWeight(.thin)
                    .padding()
                    .background(Color.blue.opacity(0.8))
                    
             
                Text("I love to code")
                Text("Please  feel free to ask questions, send requests via the course Q&a or direct message me")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundStyle(.red)
                    .font(.title2)
                Image(.apple)
                    .resizable()
                    .frame(width: 100, height: 100)
                 
            }
            .padding()
           
        }
    }
}

#Preview {
    ContentView()
}
