//
//  MovieCell.swift
//  SwiftUI-App
//
//  Created by Bhushan  Borse on 11/08/23.
//

import SwiftUI

struct MovieCell: View {
    
    var movie: PopularMovies

    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(.white)
                .shadow(radius: 10)
            HStack{
                AsyncImage(url: URL(string: kImageURL + movie.posterPath)) { image in
                    image
                        .resizable()
                        .scaledToFit()
//                        .padding()
                        .cornerRadius(10)
                } placeholder: {
                    Image(systemName: "photo")
                        .imageScale(.large)
                        .foregroundColor(.gray)
                }
            }
        }
        .frame(width: 322, height: 480)

    }
}

struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell(movie: PopularMovies(voteAverage: 1, backdropPath: "1", id: 1, originalLanguage: "1", video: false, overview: "1", voteCount: 1, title: "1", popularity: 1, releaseDate: "1", originalTitle: "1", posterPath: kImageURL + "/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg", adult: false))
    }
}
