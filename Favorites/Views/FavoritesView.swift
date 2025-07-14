//
//  FavoritesView.swift
//  Favorites
//
//  Created by user280687 on 7/11/25.
//

import SwiftUI

struct FavoritesView: View {
    
    @EnvironmentObject var favorites: FavoritesViewModel
    @Binding var searchText: String
    
    var body: some View {
        ScrollView {
            LazyVStack {
                let favCities = favorites.cities.filter { $0.isFavorite }
                let favHobbies = favorites.hobbies.filter { $0.isFavorite }
                let favBooks = favorites.books.filter { $0.isFavorite }

                if favCities.isEmpty && favHobbies.isEmpty && favBooks.isEmpty {
                    Text("No Favorites Selected")
                } else {
                    if !favCities.isEmpty {
                        ForEach(favCities) { city in
                            CityCardView(city: city)
                        }
                    }
                    
                    if !favHobbies.isEmpty {
                        ForEach(favHobbies) { hobby in
                            HobbyRowView(hobby: hobby)
                        }
                    }
                
                    if !favBooks.isEmpty {
                        ForEach(favBooks) { book in
                            BookRowView(book: book)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    FavoritesView(searchText: .constant(""))
        .environment(FavoritesViewModel())
}
