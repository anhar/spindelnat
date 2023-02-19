//
//  URLRequest+Extensions.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation

public extension URLRequest {

    mutating func setValue(_ value: String?, forHTTPHeader header: HTTPHeader) {
        setValue(value, forHTTPHeaderField: header.rawValue)
    }

    mutating func setContentType(_ type: HTTPHeaderContentType) {
        setValue(type.value, forHTTPHeaderField: HTTPHeader.contentType.rawValue)
    }

    mutating func setUserAgent(_ userAgent: String) {
        setValue(userAgent, forHTTPHeaderField: HTTPHeader.userAgent.rawValue)
    }

    mutating func setAuthHeader(_ authHeader: String?) {
        setValue(authHeader, forHTTPHeaderField: HTTPHeader.authorization.rawValue)
    }

    mutating func setHTTPMethod(_ httpMethod: HTTPMethod) {
        self.httpMethod = httpMethod.rawValue
    }
}
