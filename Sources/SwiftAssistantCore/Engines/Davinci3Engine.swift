//
//  Davinci3Engine.swift
//  
//
//  Created by Murilo Araujo on 09/04/23.
//

import Foundation
import OpenAIKit

public class Davinci3Engine: ModelEngine {
    let openAIClient: OpenAIKit.Client
    
    public init(openAIClient: OpenAIKit.Client) {
        self.openAIClient = openAIClient
    }
    
    public func getResponse(from queryString: String) async throws -> [String] {
        do {
            let completion = try await openAIClient.completions.create(model: Model.GPT3.textDavinci003,
                prompts: ["A linguagem de programação usada é Swift. \(queryString)"],
            maxTokens: 2048)
            
            let response = completion.choices.map { choice in
                choice.text
            }
            
            return response
        } catch {
            throw error
        }
    }
}
