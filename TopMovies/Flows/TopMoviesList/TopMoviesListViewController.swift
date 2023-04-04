//
//  TopMoviesListViewController.swift
//  TopMovies
//
//  Created by Serhii Prykhodko on 05.04.2023.
//

import UI
import UIKit
import FeatureCommon

final class TopMoviesListViewController: NiblessViewController {
  
  private let viewModel: TopMoviesListViewModel
  
  init(viewModel: TopMoviesListViewModel) {
    self.viewModel = viewModel
    
    super.init()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "Top Movies"
    view.backgroundColor = .blue
  }
}
