//
//  SceneDelegate.swift
//  imdb-top-movies
//
//  Created by Serhii Prykhodko on 27.03.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?
  
  private var applicationCoordinator: ApplicationFlowCoordinator?
  
  func scene(_ scene: UIScene,
             willConnectTo session: UISceneSession,
             options connectionOptions: UIScene.ConnectionOptions) {
    guard let scene = scene as? UIWindowScene else { return }
    
    let window = UIWindow(windowScene: scene)
    self.window = window
    applicationCoordinator = ApplicationFlowAssembly.assemble(window: window)
    applicationCoordinator?.execute()
  }
}

