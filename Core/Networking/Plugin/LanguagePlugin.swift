//
//  LanguagePlugin.swift
//  Core
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import DomainCommon

public struct LanguagePlugin: NetworkPlugin {
  
  public func prepare(_ request: APIRequest) -> APIRequest {
    var proxy = APIRequestProxy(request: request)
    // current app language
    let language = Locale.preferredLanguages[0].prefix(2)
    proxy.path = "\(language)/" + proxy.path
    
    return proxy
  }
}
