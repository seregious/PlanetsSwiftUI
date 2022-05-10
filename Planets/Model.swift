//
//  Model.swift
//  PlanetsGuide
//
//  Created by Сергей Иванчихин on 08.05.2022.
//

import Foundation

struct Planet: Hashable {
    let name, image, generalInfo, number: String
    let orbitalSpeed, square, radius, weight, day, year: Double
    let temperature: [Int]
}
