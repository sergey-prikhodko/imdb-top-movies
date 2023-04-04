//
//  ApiKeyPlugin.swift
//  Core
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import DomainCommon

public struct ApiKeyPlugin: NetworkPlugin {
  
  private let apiKey: String
  
  public init(apiKey: String) {
    self.apiKey = apiKey
  }
  
  public func prepare(_ request: APIRequest) -> APIRequest {
    var proxy = APIRequestProxy(request: request)
    proxy.path += apiKey
    
    return proxy
  }
}
