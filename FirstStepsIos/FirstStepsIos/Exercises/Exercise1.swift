//
//  ContentView.swift
//  FirstStepsIos
//
//  Created by ReedRichards on 8/3/25.
//

import SwiftUI

struct Exersice1: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("First Steps!")
            Button(action: {
                print("Holaa desde button")
            }, label: {
                Text("Mi primer boton en swift")
            })
        }
        .padding()
    }
}
//vertical stack
struct Example:View {
    var body: some View {
        VStack{
            Text("My first View")
            Text("My first View")
            Text("My first View")
        }.padding()
        
    }
}
//hStack stack
struct ExampleVertical:View {
    var body: some View {
        HStack{
            Text("My first View")
            VStack {
                Text("My first View")
                Text("My first View").bold()
                    .frame(width: 120, height: 200)
            }
        }
        .padding()
        
    }
}
struct PlayWihtFlex:View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.gray)
                .frame(height: 100)

            Rectangle()
                .foregroundColor(.gray)
                .frame(height: 100)
              
        }  .padding()
            
        
    }
}
struct ExerciceOne:View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(height: 100)
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(height: 100)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(height: 100)
            }
            HStack {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(height: 100)
            }
            HStack {
                Circle()
                    .foregroundColor(.green)
                    .frame(height: 150)
                Rectangle()
                    .frame(width: 100, height: 260)
                Circle()
                    .foregroundColor(.indigo)
                    .frame(height: 150)
            } .padding(2)
            
            HStack {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(height: 100)
            }
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(height: 100)
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(height: 100)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(height: 100)
            }
        }
        
            .background(.red)
            
        
    }
}


#Preview {
    ExerciceOne()
}
