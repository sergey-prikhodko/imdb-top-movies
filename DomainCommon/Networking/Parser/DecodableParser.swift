//
//  DecodableParser.swift
//  DomainCommon
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import Foundation

public final class DecodableParser<T: Decodable>: ResponseParser {
  
  public typealias Value = T
  
  public let decoder: JSONDecoder
  
  public init(decoder: JSONDecoder = defaultDecoder, keyPath: String? = nil) {
    self.decoder = decoder
  }
  
  public func parse(_ data: Data) throws -> T {
    return try decoder.decode(T.self, from: data)
  }
}
