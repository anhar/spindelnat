//
//  HTTPHeaderContentType.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation

/// An enum for the Content-Type HTTP header.
public enum HTTPHeaderContentType: Hashable {
    
    case binary
    case formData
    case formDataWithBoundary(boundary: String)
    case formDataURLEncoded
    case html
    case json
    case xml
    
    var value: String {
        switch self {
        case .binary:
            return "application/octet-stream"
        case .formData:
            return "multipart/form-data"
        case .formDataWithBoundary(let boundary):
            return "multipart/form-data; boundary=\(boundary)"
        case .formDataURLEncoded:
            return "application/x-www-form-urlencoded"
        case .html:
            return "text/html"
        case .json:
            return "application/json"
        case .xml:
            return "text/xml"
        }
    }
}
