//
//  APIRequestProxy.swift
//  DomainCommon
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import Foundation

public struct APIRequestProxy: APIRequest {
  
  public var path: String
  public var method: HTTPMethod
  public var parameters: [String: Any]?
  public var headers: [String: String]?
  
  public init(request: APIRequest) {
    path = request.path
    method = request.method
    parameters = request.parameters
    headers = request.headers
  }
}
