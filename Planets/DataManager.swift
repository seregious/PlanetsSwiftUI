//
//  DataManager.swift
//  PlanetsGuide
//
//  Created by Сергей Иванчихин on 08.05.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    func getPlanets() -> [Planet] {
        [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]
    }
    
    let mercury = Planet(
        name: "Mercury",
        image: "",
        generalInfo: "Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun's planets. It is named after the Roman god Mercurius (Mercury), god of commerce, messenger of the gods, and mediator between gods and mortals, corresponding to the Greek god Hermes (Ἑρμῆς). Like Venus, Mercury orbits the Sun within Earth's orbit as an inferior planet, and its apparent distance from the Sun as viewed from Earth never exceeds 28°. This proximity to the Sun means the planet can only be seen near the western horizon after sunset or the eastern horizon before sunrise, usually in twilight. At this time, it may appear as a bright star-like object, but is more difficult to observe than Venus. From Earth, the planet telescopically displays the complete range of phases, similar to Venus and the Moon, which recurs over its synodic period of approximately 116 days.",
        number: "first planet",
        orbitalSpeed: 47.36,
        square: 0.147,
        radius: 0.3829,
        weight: 0.055,
        day: 176,
        year: 87.969,
        temperature: [100, 700]
    )
    
    let venus = Planet(
        name: "Venus",
        image: "",
        generalInfo: "",
        number: "",
        orbitalSpeed: 0,
        square: 0,
        radius: 0,
        weight: 0,
        day: 0,
        year: 0,
        temperature: []
    )
    
    let earth = Planet(
        name: "Earth",
        image: "",
        generalInfo: "",
        number: "",
        orbitalSpeed: 0,
        square: 0,
        radius: 0,
        weight: 0,
        day: 0,
        year: 0,
        temperature: []
    )
    
    let mars = Planet(
        name: "Mars",
        image: "",
        generalInfo: "",
        number: "",
        orbitalSpeed: 0,
        square: 0,
        radius: 0,
        weight: 0,
        day: 0,
        year: 0,
        temperature: []
    )
    
    let jupiter = Planet(
        name: "Jupiter",
        image: "",
        generalInfo: "",
        number: "",
        orbitalSpeed: 0,
        square: 0,
        radius: 0,
        weight: 0,
        day: 0,
        year: 0,
        temperature: []
    )
    
    let saturn = Planet(
        name: "Saturn",
        image: "",
        generalInfo: "",
        number: "",
        orbitalSpeed: 0,
        square: 0,
        radius: 0,
        weight: 0,
        day: 0,
        year: 0,
        temperature: []
    )
    
    let uranus = Planet(
        name: "Uranus",
        image: "",
        generalInfo: "",
        number: "",
        orbitalSpeed: 0,
        square: 0,
        radius: 0,
        weight: 0,
        day: 0,
        year: 0,
        temperature: []
    )
    
    let neptune = Planet(
        name: "Neptune",
        image: "",
        generalInfo: "",
        number: "",
        orbitalSpeed: 0,
        square: 0,
        radius: 0,
        weight: 0,
        day: 0,
        year: 0,
        temperature: []
    )
    
    private init() {}
}
