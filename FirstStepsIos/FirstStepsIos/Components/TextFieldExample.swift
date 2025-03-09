//
//  TextFieldExample.swift
//  FirstStepsIos
//
//  Created by ReedRichards on 8/3/25.
//

import SwiftUI

struct TextFieldExample: View {
    
    @State var email = "";
    @State var password = "";
    
    var body: some View {
        VStack {
            TextField("Escribe tu email", text: $email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal,32)
                .onChange(of: email) { oldValue, newValue in
                    print("antiguo valor es \(oldValue) y el nuevo es \(newValue)")
                }
            SecureField("Escribe tu contraseña", text: $password)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal,32)
                .onChange(of: password) { oldValue, newValue in
                    print("antiguo valor es \(oldValue) y el nuevo es \(newValue)")
                }
        }
        
            
    }
}

#Preview {
    TextFieldExample()
}
