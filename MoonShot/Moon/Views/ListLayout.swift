//
//  ListLayout.swift
//  MoonShot
//
//  Created by Md. Masud Rana on 1/28/23.
//

import SwiftUI

struct ListLayout: View {
    @ObservedObject  var viewModel: ViewModel

    var body: some View {
        List(viewModel.missions) { mission in
            NavigationLink {
                MissionDetails(mission: mission, astronauts: viewModel.astronauts)
            } label: {
                VStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()

                    VStack {
                        Text(mission.displayName)
                            .font(.headline)

                        Text(mission.formattedLaunchDate)
                            .font(.caption)
                    }
                }
            }
            .listRowBackground(Color.darkBackground)
        }
        .listStyle(.plain)
    }
}

struct ListLayout_Previews: PreviewProvider {
    static var previews: some View {
        ListLayout(viewModel: ViewModel())
    }
}
