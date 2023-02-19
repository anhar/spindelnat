//
//  HTTPHeaderContentTypeTests.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import XCTest
@testable import Spindelnat

final class HTTPHeaderContentTypeTests: XCTestCase {
    func testBinary() throws {
        let contentType: HTTPHeaderContentType = .binary
        XCTAssertEqual(contentType.value, "application/octet-stream")
    }
    
    func testFormData() throws {
        let contentType: HTTPHeaderContentType = .formData
        XCTAssertEqual(contentType.value, "multipart/form-data")
    }
    
    func testFormDataWithBoundary() throws {
        let contentType: HTTPHeaderContentType = .formDataWithBoundary(boundary: "Test")
        XCTAssertEqual(contentType.value, "multipart/form-data; boundary=Test")
    }
    
    func testFormDataURLEncoded() throws {
        let contentType: HTTPHeaderContentType = .formDataURLEncoded
        XCTAssertEqual(contentType.value, "application/x-www-form-urlencoded")
    }
    
    func testHTML() throws {
        let contentType: HTTPHeaderContentType = .html
        XCTAssertEqual(contentType.value, "text/html")
    }
    
    func testJSON() throws {
        let contentType: HTTPHeaderContentType = .json
        XCTAssertEqual(contentType.value, "application/json")
    }
    
    func testXML() throws {
        let contentType: HTTPHeaderContentType = .xml
        XCTAssertEqual(contentType.value, "text/xml")
    }
}

