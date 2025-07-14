//
//  CityCardView.swift
//  Favorites
//
//  Created by user280687 on 7/13/25.
//

import SwiftUI

struct HobbyRowView: View {
    
    let hobby : HobbyModel
    @EnvironmentObject private var favorites : FavoritesViewModel
    
    var body: some View {
        HStack {
            Text(hobby.hobbyIcon)
                .font(.title2)
            Text(hobby.hobbyName)
                .font(.body)
            Spacer()
            Button(action: {
                favorites.toggleFavoriteHobby(hobby: hobby)
            }) {
                Image(systemName: hobby.isFavorite ? "heart.fill" : "heart")
                    .padding(6)
                    .foregroundStyle(hobby.isFavorite ? .red : .gray)
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    HobbyRowView(hobby: HobbyModel(id: 2, hobbyName: "Photography", hobbyIcon: "🎨"))
}
