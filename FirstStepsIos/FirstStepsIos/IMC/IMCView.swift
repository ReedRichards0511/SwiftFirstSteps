//
//  IMCView.swift
//  FirstStepsIos
//
//  Created by ReedRichards on 8/3/25.
//

import SwiftUI

struct IMCView: View {
    
    @State var gender : Int = 0;
    @State var heightMove : Double = 150
    @State var age : Int = 18;
    @State var weight : Int = 80;
    
    
    var body: some View {
        VStack{
            HStack {
                ToggleButton(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender)
                
                ToggleButton(text: "Mujer", imageName: "star.fill", gender: 1, selectedGender: $gender)
            }
           
            HeigthCalculator(selectedHeight: $heightMove)
            HStack{
                CounterButton(text: "Edad", number: $age)
                CounterButton(text: "Peso", number: $weight)
            }
            IMCCalculatorButton(
                userWeight: Int(weight), userHeight: Int(heightMove)
            )
            
            
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

struct ToggleButton: View {
    
    let text: String;
    let imageName: String;
    let gender: Int;
    @Binding var selectedGender : Int;
    
    
    var body: some View {
        
        let color = if (selectedGender == gender) {
            Color.backgroundComponentSelected
        } else{
            Color.backgoundComponent
        }
        
        Button(action: {
            selectedGender = gender
        }){
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .foregroundColor(.white)
                InformationText(text: text)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
        }
    }
}

struct InformationText: View {
    let text : String;
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
    }
}

struct TitleText: View {
    let text : String;
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(.gray)
    }
}



struct HeigthCalculator : View {
    @Binding var selectedHeight: Double;
    var body: some View {
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight, in: 100...220, step: 1)
                .accentColor(.purple)
                .padding(.horizontal, 16)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgoundComponent)
        
    }
}

struct CounterButton : View {
    let text : String;
    @Binding var number: Int
    var body: some View {
        VStack {
            TitleText(text: text)
            InformationText(text: String(number))
            HStack{
                Button(action:{
                    if(number < 100){
                        number += 1
                    } else {
                        return
                    }
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "plus")
                            .resizable()
                            .foregroundColor(.white)
                            
                            .frame(width: 25, height: 25)
                        
                    }
                }
                Button(action:{
                    if(number > 0){
                        number -= 1
                    } else {
                        return
                    }
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            
                            .frame(width: 25, height: 25)
                        
                    }
                }
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgoundComponent)
            .cornerRadius(10)
        
    }
}

struct IMCCalculatorButton : View {
    let userWeight: Int
    let userHeight: Int
    var body: some View {
        NavigationStack{
            NavigationLink(destination: {IMCResult(userWeight: userWeight, userHeight: userHeight)}){
                Text("Calcular")
                    .font(.title)
                    .bold()
                    .foregroundColor(.purple)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .background(.backgoundComponent)
            }
        }
    }
}

#Preview {
    IMCView()
}
