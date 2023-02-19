//
//  HTTPMethodTests.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import XCTest
@testable import Spindelnat

class HTTPMethodTests: XCTestCase {

    func testGET() throws {
        let method: HTTPMethod = .get
        XCTAssertEqual(method.rawValue, "GET")
    }
    
    func testPUT() throws {
        let method: HTTPMethod = .put
        XCTAssertEqual(method.rawValue, "PUT")
    }
    
    func testPOST() throws {
        let method: HTTPMethod = .post
        XCTAssertEqual(method.rawValue, "POST")
    }
    
    func testDELETE() throws {
        let method: HTTPMethod = .delete
        XCTAssertEqual(method.rawValue, "DELETE")
    }
    
    func testPATCH() throws {
        let method: HTTPMethod = .patch
        XCTAssertEqual(method.rawValue, "PATCH")
    }

}
