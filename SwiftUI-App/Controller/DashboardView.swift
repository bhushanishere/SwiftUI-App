//
//  DashboardView.swift
//  SwiftUI-App
//
//  Created by Bhushan  Borse on 10/08/23.
//

import SwiftUI

struct DashboardView: View {
    
    @State var popularMovies: [PopularMovies] = []
    
    var body: some View {
        NavigationView{
            List{
                ForEach(popularMovies, id: \.id){ movie in
                    MovieCell(movie: movie)
                }
            }
            .navigationTitle("Popular")
            .onAppear {
                callMovieAPI()
            }
        }
    }

    func callMovieAPI()  {
        guard let url = URL(string:  kBaseURL + kPopularMovies  + "?page=1&" + kAPIKey ) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
                do {
                    let decodeData = try JSONDecoder().decode(MovieModel.self, from: data)
                    print("decodeData --->", decodeData)
                    self.popularMovies = decodeData.popularMovies
                } catch {
                    print("Error while fetching data", error)
                }
            } else if let error = error {
                //Print API call error
                print("Error fetching data: \(error.localizedDescription)")
            }
        }.resume()
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
