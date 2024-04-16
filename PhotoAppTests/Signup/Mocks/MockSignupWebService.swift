//
//  MockSignupWebService.swift
//  PhotoAppTests
//
//  Created by kieu.anh.tuanb on 04/04/2024.
//  Copyright © 2024 Sergey Kargopolov. All rights reserved.
//

import Foundation
@testable import PhotoApp

class MockSignupWebService: SignupWebServiceProtocol {
    
    var isSignupMethodCalled: Bool = false
    var shouldRetrunError: Bool = false
    
    func signup(withForm formModel: PhotoApp.SignupFormRequestModel, completionHandler: @escaping (PhotoApp.SignupResponseModel?, PhotoApp.SignupError?) -> Void) {
        
        isSignupMethodCalled = true
        
        if shouldRetrunError {
            let error = SignupError.invalidResponseModel
            completionHandler(nil, error)
        } else {
            let responseModel = SignupResponseModel(status: "Ok")
            completionHandler(responseModel ,nil)
        }
    }
}
