//
//  TopListControllerAssembler.swift
//  TopMovies
//
//  Created by Serhii Prykhodko on 05.04.2023.
//

import Foundation

struct TopListControllerAssembler {
  
  static func assembly(
    navigationHandler: TopMoviesListNavigationHandler,
    dependencies: Dependencies
  ) -> TopMoviesListViewController {
    let model = TopMoviesListModel(
      navigationHandler: navigationHandler,
      requestService: .init(apiClient: dependencies.apiClient)
    )
    let viewModel = TopMoviesListViewModel(model: model)
    
    return TopMoviesListViewController(viewModel: viewModel)
  }
}
