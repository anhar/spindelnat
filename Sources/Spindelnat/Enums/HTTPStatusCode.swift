//
//  HTTPStatusCode.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation

/// An enum for HTTP status codes.
public enum HTTPStatusCode: Int, Codable {
    case ok = 200
    case created = 201
    case accepted = 202
    case nonAuthoritativeInformation = 203
    case noContent = 204
    case resetContent = 205
    case partialContent = 206
    case multiStatus = 207
    case multipleChoices = 300
    case movedPermanently = 301
    case movedTemporarily = 302
    case seeOther = 303
    case notModified = 304
    case useProxy = 305
    case switchProxy = 306
    case temporaryRedirect = 307
    case permanentRedirect = 308
    case badRequest = 400
    case unAuthorized = 401
    case forbidden = 403
    case notFound = 404
    case methodNotAllowed = 405
    case payloadTooLarge = 413
    case uriTooLong = 414
    case tooManyRequests = 429
    case requestHeaderFieldsTooLarge = 431
    case internalServerError = 500
    case notImplemented = 501
    case badGateway = 502
    case serviceUnavailable = 503
    case gatewayTimeout = 504
    case httpVersionNotSupported = 505
    case variantAlsoNegotiates = 506
    case insufficientStorage = 507
    case loopDetected = 508
    case notExtended = 510
    case networkAuthenticationRequired = 511
    case invalidSSLCertificate = 526
    
    public static var successCodes: [HTTPStatusCode] {
        return [.ok,
                .created,
                .accepted,
                .nonAuthoritativeInformation,
                .noContent,
                .resetContent,
                .partialContent,
                .multiStatus]
    }
    
    public static var redirectionCodes: [HTTPStatusCode] {
        return [.multipleChoices,
                .movedPermanently,
                .movedTemporarily,
                .seeOther,
                .notModified,
                .useProxy,
                .switchProxy,
                .temporaryRedirect,
                .permanentRedirect]
    }
    
    public static var clientErrorCodes: [HTTPStatusCode] {
        return [.badRequest,
                .unAuthorized,
                .forbidden,
                .notFound,
                .methodNotAllowed,
                .payloadTooLarge,
                .uriTooLong,
                .tooManyRequests,
                .requestHeaderFieldsTooLarge]
    }
    
    public static var serverErrorCodes: [HTTPStatusCode] {
        return [.internalServerError,
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
    }
}
