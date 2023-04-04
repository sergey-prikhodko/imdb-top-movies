//
//  NetworkError.swift
//  DomainCommon
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import Foundation

public enum NetworkError: Error {
  
  case incorrectURL
  case apiClientIsNil
}

// MARK: - LocalizedError

extension NetworkError: LocalizedError {
  
  public var errorDescription: String? {
    switch self {
    case .incorrectURL:
      return "Wrong URL"
      
    case .apiClientIsNil:
      return "APIClient is nill"
    }
  }
}
