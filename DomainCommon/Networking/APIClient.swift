//
//  APIClient.swift
//  DomainCommon
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import Foundation

public protocol APIClient {
  
  func execute<Parser: ResponseParser>(_ request: APIRequest, parser: Parser) async -> Result<Parser.Value, Error>
}
