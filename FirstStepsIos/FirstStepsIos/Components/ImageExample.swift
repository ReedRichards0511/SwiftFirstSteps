//
//  ImageExample.swift
//  FirstStepsIos
//
//  Created by ReedRichards on 8/3/25.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("TVA")
            .resizable()
            .scaledToFit()
            .frame(width: 350, height: 150)
        Image(systemName: "square.circle.fill")
            .resizable()
            .scaledToFill()
            .frame(width: 50, height: 90)
    }
}

#Preview {
    ImageExample()
}
