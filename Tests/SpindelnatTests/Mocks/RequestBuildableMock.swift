//
//  RequestBuildableMock.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation
@testable import Spindelnat

struct RequestBuildableMock: RequestBuildable {
    var baseURL: URL
    var path: RequestPathMock
    var parameters: [URLQueryItem]?
    var body: (any BodyBuildable)?
    var method: HTTPMethod
    var cachePolicy: URLRequest.CachePolicy
    var timeoutInterval: TimeInterval
    var metadata: RequestMetadataMock
    var contentType: HTTPHeaderContentType
    var successCodes: [HTTPStatusCode]
    var customHeaders: [String : String?]? = nil
    
    init() {
        self.baseURL = URL(string: "https://api.example.com")!
        self.path = .service
        self.method = .get
        self.cachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        self.timeoutInterval = 60
        self.metadata = .init(authHeader: nil, userAgent: "com.company.example")
        self.contentType = .json
        self.successCodes = HTTPStatusCode.successCodes
    }
}

