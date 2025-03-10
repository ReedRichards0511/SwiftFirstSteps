//
//  IMCResult.swift
//  FirstStepsIos
//
//  Created by ReedRichards on 10/03/2025.
//

import SwiftUI

struct IMCResult: View {
        
    let userWeight: Int
    let userHeight: Int
    
    var body: some View {
        VStack {
            Text("Tu resultado")
                .font(.title)
                .foregroundColor(.white)
            let result = calculateIM(weight: userWeight, height: userHeight)
            InformationView(result: result)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
        
}

func calculateIM (weight:Int, height:Int)-> Int {
    let result = weight / ((height/100)*2)
    return result
}

struct InformationView: View {
    let result: Int;
    var body: some View {
        let information = getImcResult(result: result)
        
        VStack{
            Spacer()
            Text(information.0)
                .foregroundColor(information.2)
                .font(.title)
                .bold()
            Spacer()
            Text(String(result))
                .font(.system(size: 80))
                .bold()
                .foregroundColor(.white)
            Spacer()
            Text(information.1)
                .foregroundColor(.white)
                .font(.title2)
                .padding(.horizontal, 8)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgoundComponent)
        .cornerRadius(16)
        .padding(16)
        
    }
}

func getImcResult(result:Int)->(String, String, Color) {
    let title: String
    let description: String
    let color: Color
    
    switch  result {
    case 0 ..< 19 :
        title = "Peso Bajo"
        description = "Estas por debajo del peso recomendado"
        color = Color.yellow
        
    case 20 ..< 24 :
        title = "Peso Normal"
        description = "Estas en el peso recomendado"
        color = Color.green
        
    case 25 ..< 29 :
        title = "Sobrepeso"
        description = "Estas por encima del peso recomendado"
        color = Color.red
    
    case 30 ..< 100 :
        title = "Sobrepeso"
        description = "Estas muy por encima del peso recomendado"
        color = Color.gray
    
    default:
        title = "Error"
        description = "ocurrio un error"
        color = Color.red
    }
    return(
        title,
        description,
        color
    )

}

#Preview {
    IMCResult(userWeight: 10, userHeight: 190)
}
