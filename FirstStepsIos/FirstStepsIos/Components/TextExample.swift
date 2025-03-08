//
//  TextExample.swift
//  FirstStepsIos
//
//  Created by ReedRichards on 8/3/25.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            Text("SIUUU")
                .font(
                    .system(
                    size: 40,
                    weight: .light,
                    design: .serif
                ))
                .italic()
                .bold()
                .underline()
                .foregroundColor(.blue)
                .background(.red)
            Text("El mau mau mau mau")
                .frame(width: 150)
                .lineLimit(3)
                .lineSpacing(12.3	)
        }
    }
}

#Preview {
    TextExample()
}
