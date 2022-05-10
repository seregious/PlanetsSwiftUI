//
//  PlanetInfo.swift
//  Planets
//
//  Created by Сергей Иванчихин on 10.05.2022.
//

import SwiftUI

struct PlanetInfo: View {
    
    let planet: Planet
    
    var body: some View {
        
        ZStack {
            BackgroundAnimation()
            ScrollView {
                VStack {
                    Text(planet.name)
                        .font(.largeTitle)
                        .padding(.bottom)
                    Text(planet.generalInfo)
                        .padding()
                    VStack(alignment: .leading) {
                        Text("Day length: \(planet.day.clean) Earths")
                        Text("Year length: \(planet.year.clean) Earths")
                        Text("Radius: \(planet.radius.clean) Earths")
                        Text("Weight: \(planet.weight.clean) Earths")
                        Text("Surface area: \(planet.square.clean) Earths")
                        Text("Surface temperature: \(planet.temperature[0]) - \(planet.temperature[1]) K")
                        Text("Orbital speed: \(planet.orbitalSpeed.clean) km/s")
                    }
                }
                .foregroundColor(.white)
                .padding(5)
                .background{
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(lineWidth: 1)
                        .opacity(0.2)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .padding()
        }
    }
}

struct PlanetInfo_Previews: PreviewProvider {
    static var previews: some View {
        let planet = DataManager.shared.mercury
        PlanetInfo(planet: planet)
    }
}

extension Double {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
