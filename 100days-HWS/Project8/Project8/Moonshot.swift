//
//  Moonshot.swift
//  Project8
//
//  Created by Меньков Д.В. on 22/2/23.
//

import SwiftUI

struct Moonshot: View {
    private let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    private let missions: [Mission] = Bundle.main.decode("missions.json")
    
    private let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    @State private var showingGrid = true
    
    var body: some View {
        NavigationView {
            Group {
                if showingGrid {
                    GridLayoutView(missions: missions, astronauts: astronauts)
                } else {
                    ListLayoutView(missions: missions, astronauts: astronauts)
                }
            }
            //                GridLayoutView(missions: missions, astronauts: astronauts)
            .padding([.horizontal, .bottom])
            .navigationTitle("Moonshot")
            .background(.darkBackground)
//            .preferredColorScheme(.dark)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Show \(showingGrid ? "list" : "grid")", role: .cancel) {
                        showingGrid.toggle()
                    }
                }
            }
        }
    }
}

struct Moonshoot_Previews: PreviewProvider {
    static var previews: some View {
        Moonshot()
    }
}
