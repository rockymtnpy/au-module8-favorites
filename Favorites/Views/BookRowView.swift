//
//  CityCardView.swift
//  Favorites
//
//  Created by user280687 on 7/13/25.
//

import SwiftUI

struct BookRowView: View {
    
    let book : BookModel
    @EnvironmentObject private var favorites : FavoritesViewModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(book.bookTitle)
                    .font(.title2).bold()
                Text(book.bookAuthor)
                    .font(.body)
                    .foregroundStyle(Color.gray)
            }
            .padding(.horizontal)
            Spacer()
            Button(action: {
                favorites.toggleFavoriteBook(book: book)
            }) {
                Image(systemName: book.isFavorite ? "heart.fill" : "heart")
                    .padding(6)
                    .foregroundStyle(book.isFavorite ? .red : .gray)
            }
        }
        .padding(.vertical, 4)
        
    }
}

#Preview {
    BookRowView(book: BookModel(id: 2, bookTitle: "1984", bookAuthor: "George Orwell"))
}
