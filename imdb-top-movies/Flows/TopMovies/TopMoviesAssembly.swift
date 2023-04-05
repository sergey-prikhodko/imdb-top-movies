//
//  TopMoviesAssembly.swift
//  imdb-top-movies
//
//  Created by Serhii Prykhodko on 05.04.2023.
//

import TopMovies
import Core

struct TopMoviesAssembly {
  
  static func assemble() -> TopMoviesFlowCoordinator {
    let apiClient = CoreApiClientAssembly.assemble(
      serverBaseURL: Environment.default.hostURL,
      apiKey: Environment.default.imdbApiKey
    )
    let dependencies = TopMovies.Dependencies(apiClient: apiClient)
    
    return TopMoviesFlowCoordinator(dependencies: dependencies)
  }
}
