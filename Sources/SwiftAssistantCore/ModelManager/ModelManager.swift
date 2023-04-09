//
//  ModelManager.swift
//  
//
//  Created by Murilo Araujo on 09/04/23.
//

import Foundation

public class ModelManager {
    let defaults = UserDefaults.standard
    
    private enum Constants {
        static let key = "SASelectedModel"
    }
    
    public func getModel() -> SAEngine {
        guard let model = defaults.string(forKey: Constants.key),
              let engine = SAEngine(rawValue: model) else {
            return .gtp3_5Turbo
        }
        return engine
    }
    
    public func set(engine: SAEngine) {
        defaults.set(engine.rawValue, forKey: Constants.key)
    }
}
