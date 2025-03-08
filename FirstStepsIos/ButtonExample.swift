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

#Preview {
    ButtonExample()
}
