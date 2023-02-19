//
//  RequestBuildable.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation

public typealias RequestBuildableResult = Result<URLRequest, RequestBuildableError>

/// A protocol for transforming type safe request structs to URLRequest.
public protocol RequestBuildable {
    associatedtype APIPath: RequestPathBuildable
    associatedtype Metadata: RequestMetadataProvidable

    /// The base URL of the request.
    var baseURL: URL { get }
    /// The path we are going against, see enums conforming to the ``RequestPathBuildable`` protocol.
    var path: APIPath { get }
    /// Computed property via protocol extension.
    var requestURL: URL { get }
    /// Optional array of URLQueryItem if the request uses query arguments.
    var parameters: [URLQueryItem]? { get }
    /// The request body of the request.
    var body: (any BodyBuildable)? { get }
    /// The HTTPMethod to be used.
    var method: HTTPMethod { get }
    /// The cachePolicy for the request. Can be modified if you for instance need HTTP ETag support.
    var cachePolicy: URLRequest.CachePolicy { get set }
    /// The timeout for the request in seconds.
    var timeoutInterval: TimeInterval { get set }
    /// The required base properties needed for the request. See ``RequestMetadataProvidable`` for more information.
    var metadata: Metadata { get }
    /// The HTTP Content-Type header for the request.
    var contentType: HTTPHeaderContentType { get }
    /// The HTTP status codes that are accepted for a valid response.
    var successCodes: [HTTPStatusCode] { get }
    /// A dictionary of custom HTTP headers
    var customHeaders: [String: String?]? { get }
    /// This method has its implementation written in a protocol extension.
    func buildURLRequest() -> RequestBuildableResult
}

public extension RequestBuildable {
    var requestURL: URL {
        return baseURL.appendingPathComponent(path.value)
    }

    func buildURLRequest() -> RequestBuildableResult {
        guard var components: URLComponents = URLComponents(url: requestURL, resolvingAgainstBaseURL: false) else {
            let error: RequestBuildableError = .failedToCreateURLComponents
            return .failure(error)
        }
        components.queryItems = parameters
        guard let requestURL: URL = components.url else {
            let error: RequestBuildableError = .failedToCreateRequestURL
            return .failure(error)
        }
        var request: URLRequest = URLRequest(url: requestURL)
        request.setHTTPMethod(method)
        request.cachePolicy = cachePolicy
        request.timeoutInterval = timeoutInterval
        request.setContentType(contentType)
        request.setUserAgent(metadata.userAgent)
        if let customHeaders: [String: String?] = customHeaders {
            customHeaders.forEach { (key: String, value: String?) in
                request.setValue(value, forHTTPHeaderField: key)
            }
        }
        if let authHeader: String = metadata.authHeader {
            request.setAuthHeader(authHeader)
        }
        if let body: any BodyBuildable = body {
            let result: BodyBuildableResult = body.buildHTTPBody()
            switch result {
            case .success(let data):
                request.httpBody = data
            case .failure(let error):
                let error: RequestBuildableError = .failedToBuildHTTPBody(error: error)
                return .failure(error)
            }
        }
        return .success(request)
    }
}
