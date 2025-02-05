//
//  Movie.swift
//  FriendsFavoriteMovies
//

//

import Foundation
import SwiftData

class Movie{
    var title: String
    var releaseDate: Date
    
    init(title: String, releaseDate: Date){
        self.title = title
        self.releaseDate = releaseDate
    }
}
