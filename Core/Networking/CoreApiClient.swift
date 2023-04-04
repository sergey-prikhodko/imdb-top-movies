//
//  CoreApiClient.swift
//  Core
//
//  Created by Serhii Prykhodko on 04.04.2023.
//

import DomainCommon

public final class CoreApiClient: APIClient {
  
  private let host: URL
  private let plugins: [NetworkPlugin]
  private let session: URLSession
  private let delegate: URLSessionDelegate?
  
  init(
    host: URL,
    configuration: URLSessionConfiguration = .default,
    delegate: URLSessionDelegate? = nil,
    delegateQueue: OperationQueue = .init(),
    plugins: [NetworkPlugin]
  ) {
    self.host = host
    self.session = URLSession(configuration: configuration, delegate: delegate, delegateQueue: delegateQueue)
    self.delegate = delegate
    self.plugins = plugins
  }
  
  public func execute<Parser: ResponseParser>(
    _ request: APIRequest,
    parser: Parser
  ) async -> Result<Parser.Value, Error> {
    do {
      let request = plugins.reduce(request) { $1.prepare($0) }
      let url = try buildURL(host: self.host.absoluteString, path: request.path)
      var urlRequest = URLRequest(url: url)
      urlRequest.allHTTPHeaderFields = request.headers
      urlRequest.httpMethod = request.method.rawValue
      urlRequest.httpShouldHandleCookies = false
      
      let (data, _) = try await session.data(for: urlRequest)
      let parsed = try parser.parse(data)
      
      return .success(parsed)
    } catch {
      return .failure(error)
    }
  }
}

// MARK: - private

private extension CoreApiClient {
  
  func buildURL(host: String, path: String) throws -> URL {
    guard let url = URL(string: host + path) else {
      throw NetworkError.incorrectURL
    }
    
    return url
  }
}
