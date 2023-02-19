//
//  RequestPathBuildable.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//


import Foundation

/// A protocol to conform different services' paths to String.
public protocol RequestPathBuildable {
    /// The value of the path to be used when building requestURLs.
    var value: String { get }
}
