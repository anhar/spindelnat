//
//  UserMock.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation
import Combine
@testable import Spindelnat

struct UserMock: JSONBodyBuildable {
    let username: String
    let password: String
    let encoder: JSONEncoder
    
    enum CodingKeys: String, CodingKey {
        case username
        case password
    }
}
