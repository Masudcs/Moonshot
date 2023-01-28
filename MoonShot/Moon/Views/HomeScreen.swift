//
//  ContentView.swift
//  MoonShot
//
//  Created by Md. Masud Rana on 1/27/23.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject private var viewModel = ViewModel()
    @State private var showingMission = true

    var body: some View {
        NavigationView {
            Group {
                if showingMission {
                    GridLayout(viewModel: viewModel)
                } else {
                    ListLayout(viewModel: viewModel)
                }
            }
            .padding(.top, 5)
            .navigationTitle("Moonshot")
            .navigationBarTitleDisplayMode(.inline)
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingMission.toggle()
                    } label: {
                        Image(systemName: "gearshape.arrow.triangle.2.circlepath")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
