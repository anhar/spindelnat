//
//  HTTPMethod.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation

/// An enum for HTTP methods.
public enum HTTPMethod: String {
    case get
    case put
    case post
    case delete
    case patch
    
    public var rawValue: String {
        switch self {
        case .get:
            return "GET"
        case .put:
            return "PUT"
        case .post:
            return "POST"
        case .delete:
            return "DELETE"
        case .patch:
            return "PATCH"
        }
    }
}
