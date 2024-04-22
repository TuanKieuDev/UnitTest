//
//  SignupErrors.swift
//  PhotoApp
//
//  Created by kieu.anh.tuanb on 03/04/2024.
//  Copyright © 2024 Sergey Kargopolov. All rights reserved.
//

import Foundation

enum SignupError: LocalizedError, Equatable {
    case invalidResponseModel
    case invalidRequestURLString
    case failedRequest(description: String)
    case illigalCharactersFound
    
    var errorDescription: String? {
        switch self {
        case .failedRequest(let description):
            return description
        case .invalidResponseModel, .invalidRequestURLString, .illigalCharactersFound:
            return ""
        }
    }
}
