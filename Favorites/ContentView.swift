//
// ContentView.swift : Favorites
//
// Copyright © 2025 Auburn University.
// All Rights Reserved.


import SwiftUI

enum TabSettings {
    case home
    case favorites
    case settings
}

struct ContentView: View {
    
    @State private var selection : TabSettings = .home
    @EnvironmentObject var favorites: FavoritesViewModel
    
    var body: some View {
        TabView (selection: $selection) {
            Tab("Home", systemImage: "square.grid.2x2", value: .home) {
                HomeView()
            }
            Tab("Favorites", systemImage: "star.fill", value: .favorites) {
                FavoritesView(searchText: .constant(""))
            }
            Tab("Settings", systemImage: "gearshape", value: .settings) {
                SettingsView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(FavoritesViewModel())
}
