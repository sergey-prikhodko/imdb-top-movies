//
//  CoreApiClientAssembly.swift
//  Core
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import Foundation

public struct CoreApiClientAssembly {
  
  public static func assemble(serverBaseURL: URL, apiKey: String) -> CoreApiClient {
    let prefixPlugin = ApiPrefixPlugin()
    let languagePlugin = LanguagePlugin()
    let apiKeyPlugin = ApiKeyPlugin(apiKey: apiKey)
    
    return .init(host: serverBaseURL, plugins: [prefixPlugin, languagePlugin, apiKeyPlugin])
  }
}
