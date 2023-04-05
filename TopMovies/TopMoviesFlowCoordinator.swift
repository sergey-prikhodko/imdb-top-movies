//
//  TopMoviesFlowCoordinator.swift
//  TopMovies
//
//  Created by Serhii Prykhodko on 05.04.2023.
//

import FeatureCommon
import UIKit

public final class TopMoviesFlowCoordinator {
  
  public weak var containerViewController: UIViewController?
  
  private let dependencies: Dependencies
  
  public init(dependencies: Dependencies) {
    self.dependencies = dependencies
  }
}

// MARK: - FlowCoordinator

extension TopMoviesFlowCoordinator: FlowCoordinator {
  
  public func createFlow() -> UIViewController {
    let controller = TopListControllerAssembly.assemble(navigationHandler: self, dependencies: dependencies)
    
    return controller
  }
}

// MARK: - TopMoviesListNavigationHandler

extension TopMoviesFlowCoordinator: TopMoviesListNavigationHandler {
}
