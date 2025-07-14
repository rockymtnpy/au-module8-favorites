//
//  FavoriteModel.swift
//  Favorites
//
//  Created by user280687 on 7/13/25.
//

import Foundation

protocol Favoritable : Identifiable {
    var id : Int { get set }
    var isFavorite : Bool { get set }
    var searchableText : String { get }
}

struct CityModel : Favoritable {
    var id : Int
    let cityName : String
    let cityImage : String
    var isFavorite : Bool = false
    
    var searchableText: String {
        return cityName
    }
}

struct HobbyModel : Favoritable {
    var id : Int
    let hobbyName : String
    let hobbyIcon : String
    var isFavorite : Bool = false
    
    var searchableText: String {
        return hobbyName
    }
}

struct BookModel : Favoritable {
    var id : Int
    let bookTitle : String
    let bookAuthor : String
    var isFavorite : Bool = false
    
    var searchableText: String {
        return bookTitle + " " + bookAuthor
    }
}
