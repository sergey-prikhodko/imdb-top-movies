//
//  TopMoviesListModel.swift
//  TopMovies
//
//  Created by Serhii Prykhodko on 05.04.2023.
//

import Foundation

protocol TopMoviesListNavigationHandler {
}

final class TopMoviesListModel {
  
  private let navigationHandler: TopMoviesListNavigationHandler
  private let requestService: TopMoviesRequestService
  
  init(navigationHandler: TopMoviesListNavigationHandler, requestService: TopMoviesRequestService) {
    self.navigationHandler = navigationHandler
    self.requestService = requestService
    
    Task {
      let movieData = try? await requestService.listOfTopMovies()
      print(movieData)
    }
  }
}
