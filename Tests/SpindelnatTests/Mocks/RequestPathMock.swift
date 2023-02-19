//
//  RequestPathMock.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation
@testable import Spindelnat

enum RequestPathMock: RequestPathBuildable {
    case service
    case user
    
    var value: String {
        switch self {
        case .service:
            return "/service"
        case .user:
            return "/user"
        }
    }
}
