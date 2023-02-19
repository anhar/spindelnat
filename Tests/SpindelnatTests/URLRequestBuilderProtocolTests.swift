//
//  URLRequestBuilderProtocolTests.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import XCTest
@testable import Spindelnat

class URLRequestBuilderProtocolTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBaseURL() throws {
        let request: RequestBuildableMock = .init()
        XCTAssertEqual(request.baseURL.absoluteString, "https://api.example.com")
    }
    
    func testAPIPath() throws {
        let request: RequestBuildableMock = .init()
        XCTAssertEqual(request.path, .service)
    }
    
    func testHTTPMethod() throws {
        let request: RequestBuildableMock = .init()
        XCTAssertEqual(request.method, .get)
    }
    
    func testRequestURL() throws {
        let request: RequestBuildableMock = .init()
        XCTAssertEqual(request.requestURL.absoluteString, "https://api.example.com/service")
    }
    
    func testTimeoutInterval() throws {
        let request: RequestBuildableMock = .init()
        XCTAssertEqual(request.timeoutInterval, 60)
    }
}
