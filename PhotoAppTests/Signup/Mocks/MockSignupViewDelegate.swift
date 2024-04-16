//
//  MockSignupViewDelegate.swift
//  PhotoAppTests
//
//  Created by kieu.anh.tuanb on 09/04/2024.
//  Copyright © 2024 Sergey Kargopolov. All rights reserved.
//

import Foundation
import XCTest
@testable import PhotoApp

class MockSignupViewDelegate: SignupViewDelegateProtocol {
    var expectation: XCTestExpectation?
    var signupError: SignupError?
    var successfulSignupCounter = 0
    var errorHandlerCounter = 0

    func successfulSignup() {
        successfulSignupCounter += 1
        expectation?.fulfill()
    }
    
    func errorHandler(error: PhotoApp.SignupError) {
        errorHandlerCounter += 1
        signupError = error
        expectation?.fulfill()
    }
    
}
