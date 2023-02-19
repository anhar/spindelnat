//
//  JSONBodyBuildable.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation

public protocol JSONBodyBuildable: BodyBuildable where EncoderType == JSONEncoder {
    
}
