//
//  Astronaut.swift
//  MoonShot
//
//  Created by Md. Masud Rana on 1/27/23.
//

import Foundation

struct CrewMember {
    let role: String
    let astronaut: Astronaut
}

struct Astronaut: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
}
