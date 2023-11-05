//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by Sam on 05/11/2023.
//

import Foundation


/// Primary API service object to get data
final class RMService{
    
    
    /// Shared singleton
    static let shared = RMService()
    
    /// private initializer
    private init() {}
    
    /// Send API call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callwack with the data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
