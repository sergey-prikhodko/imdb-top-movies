//
//  TopMoviesRequestService.swift
//  TopMovies
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import DomainCommon

final class TopMoviesRequestService {
  
  private let apiClient: APIClient
  
  init(apiClient: APIClient) {
    self.apiClient = apiClient
  }
  
  func listOfTopMovies() async throws -> NetworkMovieData {
    let request = TopMoviesRequest()
    let parser = DecodableParser<NetworkMovieData>()
    
    let result = await apiClient.execute(request, parser: parser)
    switch result {
    case let .success(movieData):
      return movieData
      
    case let .failure(error):
      throw error
    }
  }
}
