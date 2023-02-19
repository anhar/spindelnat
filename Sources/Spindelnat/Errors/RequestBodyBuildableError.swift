//
//  URLRequestBodyBuilderError.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation

/// An error enum returned when failing to generate ``BodyBuildable``.
public enum RequestBodyBuildableError: Error {
    case dataIsNull
    case encodeError(error: Error)
}
