//
//  AstronautDetails.swift
//  MoonShot
//
//  Created by Md. Masud Rana on 1/28/23.
//

import SwiftUI

struct AstronautDetails: View {
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronaut.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautDetails_Previews: PreviewProvider {
    static let astrounats: [String: Astronaut] = ViewModel().astronauts
    
    static var previews: some View {
        AstronautDetails(astronaut: astrounats["armstrong"]!)
    }
}
