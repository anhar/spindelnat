//
//  URLRequestMetadataProtocolTests.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import XCTest
@testable import Spindelnat

class RequestMetadataProvidableTests: XCTestCase {

    func testAuthHeaderNil() throws {
        let metadata: RequestMetadataMock = .init(authHeader: nil,
                                                     userAgent: "com.company.example")
        XCTAssertEqual(metadata.authHeader, nil)
        XCTAssertEqual(metadata.userAgent, "com.company.example")
    }
    
    func testAuthHeaderNotNil() throws {
        let metadata: RequestMetadataMock = .init(authHeader: "b4a21caf-839a-4f83-8901-4d1847b4bb3d",
                                                     userAgent: "com.company.example")
        XCTAssertEqual(metadata.authHeader, "b4a21caf-839a-4f83-8901-4d1847b4bb3d")
        XCTAssertEqual(metadata.userAgent, "com.company.example")
    }
}
