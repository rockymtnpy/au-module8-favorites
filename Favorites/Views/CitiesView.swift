//
//  CitiesView.swift
//  Favorites
//
//  Created by user280687 on 7/13/25.
//

import SwiftUI

struct CitiesView: View {
    
    @EnvironmentObject var favorites : FavoritesViewModel
    @Binding var searchText : String
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(favorites.filteredCities(searchText: searchText)) { city in
                    CityCardView(city: city)
                }
            }
        }
    }
}

#Preview {
    CitiesView(searchText: .constant(""))
        .environmentObject(FavoritesViewModel())
}


