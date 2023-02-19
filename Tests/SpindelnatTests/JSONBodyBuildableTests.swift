//
//  JSONBodyBuildableTests.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import XCTest
@testable import Spindelnat

final class JSONBodyBuildableTests: XCTestCase {

    func testBuilder() throws {
        let encoder: JSONEncoder = .init()
        let user: UserMock = .init(username: "Andreas",
                                   password: "SuperSecret",
                                   encoder: encoder)
        let result: BodyBuildableResult = user.buildHTTPBody()
        switch result {
        case .success(let data):
            XCTAssertNotNil(data)
        case .failure(let error):
            XCTFail("Test case failed with error: \(error.localizedDescription)")
        }
    }
}
