//
//  APIRequest.swift
//  DomainCommon
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import Foundation

public protocol APIRequest {
  
  var path: String { get }
  var method: HTTPMethod { get }
  var parameters: [String: Any]? { get }
  var headers: [String: String]? { get }
}

// MARK: - Base

public extension APIRequest {
  
  var method: HTTPMethod { return .get }
  var parameters: [String: Any]? { return nil }
  var headers: [String: String]? { return nil }
}
