//
//  LabelExmaple.swift
//  FirstStepsIos
//
//  Created by ReedRichards on 8/3/25.
//

import SwiftUI

struct LabelExmaple: View {
    var body: some View {
        Label("For All time Always", image: "TVA")
        Label("Icono de ejemplo", systemImage: "playstation.logo")
        Label(
            title: {
                Text("For all Time Always")
            }, icon: {
                Image("TVA")
                    .resizable()
                    .scaledToFit()
            }
        )
    }
}

#Preview {
    LabelExmaple()
}
