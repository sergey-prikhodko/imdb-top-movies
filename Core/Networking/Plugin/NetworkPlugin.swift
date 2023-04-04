//
//  NetworkPlugin.swift
//  Core
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import DomainCommon

public protocol NetworkPlugin {
  
  /// Called to modify a request before sending
  func prepare(_ request: APIRequest) -> APIRequest
}
