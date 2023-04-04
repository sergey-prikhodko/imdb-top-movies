//
//  ApiPrefixPlugin.swift
//  Core
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import DomainCommon

public struct ApiPrefixPlugin: NetworkPlugin {
  
  public func prepare(_ request: APIRequest) -> APIRequest {
    var proxy = APIRequestProxy(request: request)
    proxy.path = "API/" + proxy.path
    
    return proxy
  }
}
