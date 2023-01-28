//
//  ViewModel.swift
//  MoonShot
//
//  Created by Md. Masud Rana on 1/28/23.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    @Published var missions: [Mission] = Bundle.main.decode("missions.json")
}
