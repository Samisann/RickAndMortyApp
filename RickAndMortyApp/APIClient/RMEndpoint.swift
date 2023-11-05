//
//  RMEndpoint.swift
//  RickAndMortyApp
//
//  Created by Sam on 05/11/2023.
//

import Foundation


/// Represent the API endpoint
@frozen enum RMEndpoint {
    /// Endpoint to get the character info
    case character
    /// Endpoint to get the episode info
    case episode
    /// Endpoint to get the location info
    case location
}
