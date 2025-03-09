//
//  IMCView.swift
//  FirstStepsIos
//
//  Created by ReedRichards on 8/3/25.
//

import SwiftUI

struct IMCView: View {
    
    
    
    var body: some View {
        VStack{
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        //.navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("IMC calculator").foregroundColor(.white)
            })
        }
            
    }
}

#Preview {
    IMCView()
}
