//
//  CitiesView.swift
//  Favorites
//
//  Created by user280687 on 7/13/25.
//

import SwiftUI

struct HobbiesView: View {
    
    @EnvironmentObject var favorites: FavoritesViewModel
    @Binding var searchText: String
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(favorites.filteredHobbies(searchText: searchText)) { hobby in
                    HobbyRowView(hobby: hobby)
                }
            }
        }
    }
}

#Preview {
    HobbiesView(searchText: .constant(""))
        .environmentObject(FavoritesViewModel())
}


