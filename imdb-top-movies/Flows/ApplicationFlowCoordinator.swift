//
//  ApplicationFlowCoordinator.swift
//  imdb-top-movies
//
//  Created by Serhii Prykhodko on 05.04.2023.
//

import UIKit

final class ApplicationFlowCoordinator {
  
  private weak var navigation: UINavigationController?
  
  private let window: UIWindow
  
  init(window: UIWindow) {
    self.window = window
  }
  
  func execute() {
    prepareTopMoviesFlow()
  }
}

// MARK: - TopMovies Flow

private extension ApplicationFlowCoordinator {
  
  func prepareTopMoviesFlow() {
    let coordinator = TopMoviesAssembly.assemble()
    let navigtionController = UINavigationController(rootViewController: coordinator.createFlow())
    coordinator.containerViewController = navigtionController
    navigation = navigtionController
    
    setWindowRootViewController(with: navigtionController)
  }
}

// MARK: - Helpers

private extension ApplicationFlowCoordinator {
  
  private func setWindowRootViewController(with viewController: UIViewController) {
    window.rootViewController = viewController
    window.makeKeyAndVisible()
  }
}
