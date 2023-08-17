//
//  DashboardModel.swift
//  Watch-Movie
//
//  Created by Bhushan  Borse on 15/07/23.
//

import Foundation

//   let movieModel = try? JSONDecoder().decode(MovieModel.self, from: jsonData)

// MARK: - MovieModel
struct MovieModel: Codable {
    let page, totalResults: Int
    let popularMovies: [PopularMovies]
    
    enum CodingKeys: String, CodingKey {
        case page
        case totalResults = "total_results"
        case popularMovies = "results"
    }
}

// MARK: - Result
struct PopularMovies: Codable {
    let voteAverage: Double
    let backdropPath: String
    let id: Int
    let originalLanguage: String
    let video: Bool
    let overview: String
    let voteCount: Int
    let title: String
    let popularity: Double
    let releaseDate, originalTitle, posterPath: String
    let adult: Bool
    
    enum CodingKeys: String, CodingKey {
        case voteAverage = "vote_average"
        case backdropPath = "backdrop_path"
        case id
        case originalLanguage = "original_language"
        case video, overview
        case voteCount = "vote_count"
        case title, popularity
        case releaseDate = "release_date"
        case originalTitle = "original_title"
        case posterPath = "poster_path"
        case adult
    }
}
