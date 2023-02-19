//
//  HTTPHeaderTests.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import XCTest
@testable import Spindelnat

final class HTTPHeaderTests: XCTestCase {
    func testContentType() throws {
        let header: HTTPHeader = .contentType
        XCTAssertEqual(header.rawValue, "Content-Type")
    }
    
    func testUserAgent() throws {
        let header: HTTPHeader = .userAgent
        XCTAssertEqual(header.rawValue, "User-Agent")
    }
    
    func testAuthorization() throws {
        let header: HTTPHeader = .authorization
        XCTAssertEqual(header.rawValue, "Authorization")
    }
    
    func testAcceptLanguage() throws {
        let header: HTTPHeader = .acceptLanguage
        XCTAssertEqual(header.rawValue, "Accept-Language")
    }
}
