//
//  ModelEngine.swift
//  XcodeGPT
//
//  Created by Murilo Araujo on 01/04/23.
//

import Foundation
import OpenAIKit

public protocol ModelEngine {
    func getResponse(from queryString: String) async throws -> [String]
}

public struct EngineID: ModelID {
    public var id: String
}

public enum SAEngine: String, CaseIterable {
    case gtp3_5Turbo = "gpt3.5turbo"
    case davinci003 = "davinci003"
    
    var readableName: String {
        switch self {
        case .gtp3_5Turbo:
            return "GPT 3.5 Turbo"
        case .davinci003:
            return "Davinci 003"
        }
    }
}
