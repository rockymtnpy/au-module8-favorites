//
//  CityCardView.swift
//  Favorites
//
//  Created by user280687 on 7/13/25.
//

import SwiftUI

struct CityCardView: View {
    
    let city : CityModel
    @EnvironmentObject private var favorites : FavoritesViewModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(city.cityImage)
                .resizable()
                .scaledToFill()
                .frame(height: 140)
                .clipped()
            HStack {
                Text(city.cityName)
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(6)
                    .background(Color.black.opacity(0.35))
                Spacer()
                Button(action: {
                    favorites.toggleFavoriteCity(city: city)
                }) {
                    Image(systemName: city.isFavorite ? "heart.fill" : "heart")
                        .padding(6)
                        .foregroundStyle(city.isFavorite ? .red : .white)
                        .background(Color.black.opacity(0.35))
                }
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 10)
        }
        .shadow(radius: 3)
    }
}

#Preview {
    CityCardView(city: CityModel(id: 1, cityName: "Amsterdam", cityImage: "amsterdam", isFavorite: false))
}
