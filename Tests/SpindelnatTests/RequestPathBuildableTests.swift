//
//  URLRequestAPIPathProtocolTests.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import XCTest
@testable import Spindelnat

class RequestPathBuildableTests: XCTestCase {

    func testAPIPathMockService() throws {
        let apiPath: RequestPathMock = .service
        XCTAssertEqual(apiPath.value, "/service")
    }
    
    func testAPIPathMockUser() throws {
        let apiPath: RequestPathMock = .user
        XCTAssertEqual(apiPath.value, "/user")
    }
}
