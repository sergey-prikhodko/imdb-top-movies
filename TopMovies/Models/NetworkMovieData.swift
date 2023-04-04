//
//  NetworkMovieData.swift
//  TopMovies
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import Foundation

struct NetworkMovieData: Decodable {
  
  let items: [Movie]
  let errorMessage: String?
}
