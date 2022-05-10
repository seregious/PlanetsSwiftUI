//
//  PlanetListView.swift
//  Planets
//
//  Created by Сергей Иванчихин on 10.05.2022.
//

import SwiftUI

struct PlanetListView: View {
    
    let planets = DataManager.shared.getPlanets()
    
    var body: some View {
        List {
            ForEach(planets, id: \.self) { planet in
                NavigationLink {
                    PlanetInfo(planet: planet)
                } label: {
                    ZStack {
                        rowBackground
                        Text(planet.name)
                    }
                }
                .listRowBackground(Color.clear)
            }
            
        }
        .listStyle(.plain)
    }
    
    var rowBackground: some View {
        RoundedRectangle(cornerRadius: 25)
            .stroke(lineWidth: 1)
            .frame(width: UIScreen.main.bounds.width-40, height: 60)
            .opacity(0.2)
    }
}

struct PlanetListView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetListView()
    }
}

