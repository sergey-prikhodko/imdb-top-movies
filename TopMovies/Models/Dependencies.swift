//
//  Dependencies.swift
//  TopMovies
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import DomainCommon

public struct Dependencies {
  
  public let apiClient: APIClient
  
  public init(apiClient: APIClient) {
    self.apiClient = apiClient
  }
}
