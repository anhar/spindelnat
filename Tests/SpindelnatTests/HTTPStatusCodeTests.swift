//
//  HTTPStatusCodeTests.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import XCTest
@testable import Spindelnat

class HTTPStatusCodeTests: XCTestCase {
    
    func testOK() throws {
        let statusCode: HTTPStatusCode = .ok
        XCTAssertEqual(statusCode.rawValue, 200)
    }
    
    func testCreated() throws {
        let statusCode: HTTPStatusCode = .created
        XCTAssertEqual(statusCode.rawValue, 201)
    }
    
    func testAccepted() throws {
        let statusCode: HTTPStatusCode = .accepted
        XCTAssertEqual(statusCode.rawValue, 202)
    }
    
    func testNonAuthoritativeInformation() throws {
        let statusCode: HTTPStatusCode = .nonAuthoritativeInformation
        XCTAssertEqual(statusCode.rawValue, 203)
    }
    
    func testNoContent() throws {
        let statusCode: HTTPStatusCode = .noContent
        XCTAssertEqual(statusCode.rawValue, 204)
    }
    
    func testResetContent() throws {
        let statusCode: HTTPStatusCode = .resetContent
        XCTAssertEqual(statusCode.rawValue, 205)
    }
    
    func testPartialContent() throws {
        let statusCode: HTTPStatusCode = .partialContent
        XCTAssertEqual(statusCode.rawValue, 206)
    }
    
    func testMultiStatus() throws {
        let statusCode: HTTPStatusCode = .multiStatus
        XCTAssertEqual(statusCode.rawValue, 207)
    }
    
    func testMultipleChoices() throws {
        let statusCode: HTTPStatusCode = .multipleChoices
        XCTAssertEqual(statusCode.rawValue, 300)
    }
    
    func testMovedPermanently() throws {
        let statusCode: HTTPStatusCode = .movedPermanently
        XCTAssertEqual(statusCode.rawValue, 301)
        
    }
    
    func testMovedTemporarily() throws {
        let statusCode: HTTPStatusCode = .movedTemporarily
        XCTAssertEqual(statusCode.rawValue, 302)
    }
    
    func testSeeOther() throws {
        let statusCode: HTTPStatusCode = .seeOther
        XCTAssertEqual(statusCode.rawValue, 303)
    }
    
    func testNotModified() throws {
        let statusCode: HTTPStatusCode = .notModified
        XCTAssertEqual(statusCode.rawValue, 304)
    }
    
    func testUseProxy() throws {
        let statusCode: HTTPStatusCode = .useProxy
        XCTAssertEqual(statusCode.rawValue, 305)
    }
    
    func testSwitchProxy() throws {
        let statusCode: HTTPStatusCode = .switchProxy
        XCTAssertEqual(statusCode.rawValue, 306)
    }
    
    func testTemporaryRedirect() throws {
        let statusCode: HTTPStatusCode = .temporaryRedirect
        XCTAssertEqual(statusCode.rawValue, 307)
    }
    
    func testPermanentRedirect() throws {
        let statusCode: HTTPStatusCode = .permanentRedirect
        XCTAssertEqual(statusCode.rawValue, 308)
    }
    
    func testBadRequest() throws {
        let statusCode: HTTPStatusCode = .badRequest
        XCTAssertEqual(statusCode.rawValue, 400)
    }
    
    func testUnAuthorized() throws {
        let statusCode: HTTPStatusCode = .unAuthorized
        XCTAssertEqual(statusCode.rawValue, 401)
    }
    
    func testForbidden() throws {
        let statusCode: HTTPStatusCode = .forbidden
        XCTAssertEqual(statusCode.rawValue, 403)
    }
    
    func testNotFound() throws {
        let statusCode: HTTPStatusCode = .notFound
        XCTAssertEqual(statusCode.rawValue, 404)
    }
    
    func testMethodNotAllowed() throws {
        let statusCode: HTTPStatusCode = .methodNotAllowed
        XCTAssertEqual(statusCode.rawValue, 405)
    }
    
    func testPayloadTooLarge() throws {
        let statusCode: HTTPStatusCode = .payloadTooLarge
        XCTAssertEqual(statusCode.rawValue, 413)
    }
    
    func testURITooLong() throws {
        let statusCode: HTTPStatusCode = .uriTooLong
        XCTAssertEqual(statusCode.rawValue, 414)
    }
    
    func testTooManyRequests() throws {
        let statusCode: HTTPStatusCode = .tooManyRequests
        XCTAssertEqual(statusCode.rawValue, 429)
    }
    
    func testRequestHeaderFieldsTooLarge() throws {
        let statusCode: HTTPStatusCode = .requestHeaderFieldsTooLarge
        XCTAssertEqual(statusCode.rawValue, 431)
    }
    
    func testInternalServerError() throws {
        let statusCode: HTTPStatusCode = .internalServerError
        XCTAssertEqual(statusCode.rawValue, 500)
    }
    
    func testNotImplemented() throws {
        let statusCode: HTTPStatusCode = .notImplemented
        XCTAssertEqual(statusCode.rawValue, 501)
    }
    
    func testBadGateway() throws {
        let statusCode: HTTPStatusCode = .badGateway
        XCTAssertEqual(statusCode.rawValue, 502)
    }
    
    func testServiceUnavailable() throws {
        let statusCode: HTTPStatusCode = .serviceUnavailable
        XCTAssertEqual(statusCode.rawValue, 503)
    }
    
    func testGatewayTimeout() throws {
        let statusCode: HTTPStatusCode = .gatewayTimeout
        XCTAssertEqual(statusCode.rawValue, 504)
    }
    
    func testHTTPVersionNotSupported() throws {
        let statusCode: HTTPStatusCode = .httpVersionNotSupported
        XCTAssertEqual(statusCode.rawValue, 505)
    }
    
    func testVariantAlsoNegotiates() throws {
        let statusCode: HTTPStatusCode = .variantAlsoNegotiates
        XCTAssertEqual(statusCode.rawValue, 506)
    }
    
    func testInsufficientStorage() throws {
        let statusCode: HTTPStatusCode = .insufficientStorage
        XCTAssertEqual(statusCode.rawValue, 507)
    }
    
    func testLoopDetected() throws {
        let statusCode: HTTPStatusCode = .loopDetected
        XCTAssertEqual(statusCode.rawValue, 508)
    }
    
    func testNotExtended() throws {
        let statusCode: HTTPStatusCode = .notExtended
        XCTAssertEqual(statusCode.rawValue, 510)
    }
    
    func testNetworkAuthenticationRequired() throws {
        let statusCode: HTTPStatusCode = .networkAuthenticationRequired
        XCTAssertEqual(statusCode.rawValue, 511)
    }
    
    func testInvalidSSLCertificate() throws {
        let statusCode: HTTPStatusCode = .invalidSSLCertificate
        XCTAssertEqual(statusCode.rawValue, 526)
    }
    
    func testSuccessCodes() throws {
        let successCodes: [HTTPStatusCode] = [.ok,
                                              .created,
                                              .accepted,
                                              .nonAuthoritativeInformation,
                                              .noContent,
                                              .resetContent,
                                              .partialContent,
                                              .multiStatus]
        XCTAssertEqual(successCodes, HTTPStatusCode.successCodes)
    }
    
    func testRedirectionCodes() throws {
        let redirectCodes: [HTTPStatusCode] = [.multipleChoices,
                                               .movedPermanently,
                                               .movedTemporarily,
                                               .seeOther,
                                               .notModified,
                                               .useProxy,
                                               .switchProxy,
                                               .temporaryRedirect,
                                               .permanentRedirect]
        XCTAssertEqual(redirectCodes, HTTPStatusCode.redirectionCodes)
    }
    
    func testClientErrorCodes() throws {
        let clientErrorCodes: [HTTPStatusCode] = [.badRequest,
                                                  .unAuthorized,
                                                  .forbidden,
                                                  .notFound,
                                                  .methodNotAllowed,
                                                  .payloadTooLarge,
                                                  .uriTooLong,
                                                  .tooManyRequests,
                                                  .requestHeaderFieldsTooLarge]
        XCTAssertEqual(clientErrorCodes, HTTPStatusCode.clientErrorCodes)
    }
    
    func testServerErrorCodes() throws {
        let serverCodes: [HTTPStatusCode] = [.internalServerError,
                                             .notImplemented,
                                             .badGateway,
                                             .serviceUnavailable,
                                             .gatewayTimeout,
                                             .httpVersionNotSupported,
                                             .variantAlsoNegotiates,
                                             .insufficientStorage,
                                             .loopDetected,
                                             .notExtended,
                                             .networkAuthenticationRequired,
                                             .invalidSSLCertificate]
        XCTAssertEqual(serverCodes, HTTPStatusCode.serverErrorCodes)
    }
}
