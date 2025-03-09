//
//  MenuView.swift
//  FirstStepsIos
//
//  Created by ReedRichards on 8/3/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            VStack {
                //simplificado
                NavigationLink(destination:IMCView()){
                    Text("IMC Calculator")
                }
                Text("App 2")
                Text("App 3")
                Text("App 4")
                Text("App 5")
            }
        }
    }
}

#Preview {
    MenuView()
}
