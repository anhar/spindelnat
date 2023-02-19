//
//  HTTPHeader.swift
//  Spindelnät
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation

/// An enum for commonly used HTTP header fields.
public enum HTTPHeader: String {
    case accept = "Accept"
    case acceptCharset = "Accept-Charset"
    case acceptDatetime = "Accept-Datetime"
    case acceptEncoding = "Accept-Encoding"
    case acceptLanguage = "Accept-Language"
    case authorization = "Authorization"
    case cacheControl = "Cache-Control"
    case contentDisposition = "Content-Disposition"
    case contentEncoding = "Content-Encoding"
    case contentLanguage = "Content-Language"
    case contentLength = "Content-Length"
    case contentLocation = "Content-Location"
    case contentMD5 = "Content-MD5"
    case contentType = "Content-Type"
    case cookie = "Cookie"
    case date = "Date"
    case eTag = "ETag"
    case expires = "Expires"
    case lastModified = "Last-Modified"
    case ifMatch = "If-Match"
    case ifNoneMatch = "If-None-Match"
    case setCookie = "Set-Cookie"
    case userAgent = "User-Agent"
    case xAuthToken = "X-Auth-Token"
    case xForwardedFor = "X-Forwarded-For"
    case xForwardedHost = "X-Forwarded-Host"
}

