//
//  BodyBuildable.swift
//  
//
//  Created by Andreas Hård on 2023-02-19.
//  Copyright © 2023 Andreas Hård. All rights reserved.
//

import Foundation
import Combine

public typealias BodyBuildableResult = Result<Data, RequestBodyBuildableError>

public protocol BodyBuildable: Encodable {
    associatedtype EncoderType: TopLevelEncoder
    
    var encoder: EncoderType { get }
    
    func buildHTTPBody() -> BodyBuildableResult
}

public extension BodyBuildable {
    func buildHTTPBody() -> BodyBuildableResult {
        do {
            guard let data: Data = try encoder.encode(self) as? Data else {
                let error: RequestBodyBuildableError = .dataIsNull
                return .failure(error)
            }
            return .success(data)
        } catch {
            let error: RequestBodyBuildableError = .encodeError(error: error)
            return .failure(error)
        }
    }
}
