//
//  ListExample.swift
//  FirstStepsIos
//
//  Created by ReedRichards on 24/03/2025.
//

import SwiftUI

var pokemons = [
    Pokemon(name: "Pikachu"),
    Pokemon(name: "Charmander"),
    Pokemon(name: "Chimchard"),
    Pokemon(name: "Charizard")
]

var digimons = [
    Digimon(name: "Agunon"),
    Digimon(name: "LolMon"),
    Digimon(name: "elpepeMon"),
    Digimon(name: "elpepeMon"),
]

struct ListExample: View {
    var body: some View {
        List{
            ForEach(pokemons, id: \.name) {
                pokemon in
                Text(pokemon.name)
            }
        }
        List(digimons) {digimon in
            Text(digimon.name)
        }
        List {
            Section(header: Text("Pokemons")) {
                ForEach(pokemons, id: \.name) {
                    pokemon in
                    Text(pokemon.name)
                }
            }
            Section(header: Text("Digimons")){
                ForEach(digimons, id: \.name) {
                    digimon in
                    Text(digimon.name)
                }
            }
        }
    }
}


struct Pokemon {
    let name : String;
}

struct Digimon : Identifiable{
    var id = UUID()
    let name : String
}

#Preview {
    ListExample()
}
