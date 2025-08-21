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
                colors:[Color.white, Color.green, Color.blue.opacity(0.4)] ,
                startPoint: .top,
                endPoint: .bottomTrailing
            )
                .ignoresSafeArea()//full screen color applied
            
            VStack {
                Image(systemName: "person.fill")
                    .imageScale(.large)
                    .foregroundStyle(.white)
                Text("Hello, Xcode!")
                    .font(.largeTitle)
                    .fontWeight(.thin)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
