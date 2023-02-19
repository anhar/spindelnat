//
//  RequestBuildableError.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation

/// An error enum returned when failing to build a URLRequest using ``RequestBuildable``.
public enum RequestBuildableError: Error {
    case failedToBuildHTTPBody(error: RequestBodyBuildableError)
    case failedToCreateURLComponents
    case failedToCreateRequestURL
}
