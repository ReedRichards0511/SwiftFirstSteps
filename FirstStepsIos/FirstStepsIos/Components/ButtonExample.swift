//
//  ButtonExample.swift
//  FirstStepsIos
//
//  Created by ReedRichards on 8/3/25.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button("Hola") {
            print("xdd")
        }
        Button(
            action:{
                print("xd")
            },
            label: {
                Text("Ejemplo")
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(30)
            }
        )
    }
}
struct Counter: View {
    
    //esto es como los useState de React
    @State var subscribersNumber: Int = 0;
    
    //esto es como el return donde va el jsx en react, por ende arriba puedes esribir logica
    //como en eun funcional component
    var body: some View {
        Button(
            action:{
                subscribersNumber += 1
            },
            label: {
                Text("Subscriptores: \(subscribersNumber)")
                    .padding()
                    .bold()
                    .font(.title)
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
            }
        )
    }
}

#Preview {
    Counter()
}
