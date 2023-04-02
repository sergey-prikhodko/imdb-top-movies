//
//  Environment.swift
//  Core
//

import Foundation

public struct Environment: Codable {
  
  public var name: String = "undefined"
  public var hostURL: URL = URL(string: "localhost")!
  public var imdbApiKey: String = "k_undefined"
  
  public static let `default`: Environment = Environment(named: "Environment") ?? Environment()
}

extension Environment {
  
  public init?(named name: String, in bundle: Bundle = .main) {
    if let url = Bundle.main.url(forResource: name, withExtension: "plist"),
       let data = try? Data(contentsOf: url),
       let value = try? PropertyListDecoder().decode(Environment.self, from: data) {
      self = value
    } else {
      return nil
    }
  }
  
}
