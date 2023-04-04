//
//  ResponseParser.swift
//  DomainCommon
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import Foundation

public protocol ResponseParser {
  
  associatedtype Value
  
  func parse(_ data: Data) throws -> Value
}

public let defaultDecoder: JSONDecoder = {
  let decoder = JSONDecoder()
  decoder.keyDecodingStrategy = .convertFromSnakeCase
  
  return decoder
}()
