//
//  ApplicationFlowAssembly.swift
//  imdb-top-movies
//
//  Created by Serhii Prykhodko on 05.04.2023.
//

import UIKit

struct ApplicationFlowAssembly {
  
  static func assemble(window: UIWindow) -> ApplicationFlowCoordinator {
    .init(window: window)
  }
}
