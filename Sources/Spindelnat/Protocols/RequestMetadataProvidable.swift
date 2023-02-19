//
//  RequestMetadataProvidable.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation

/// A protocol with required properties used in ``RequestBuildable``.
public protocol RequestMetadataProvidable {
    var authHeader: String? { get }
    var userAgent: String { get }
}
