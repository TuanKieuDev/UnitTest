//
//  MockSignupModelValidator.swift
//  PhotoAppTests
//
//  Created by kieu.anh.tuanb on 04/04/2024.
//  Copyright © 2024 Sergey Kargopolov. All rights reserved.
//

import Foundation
@testable import PhotoApp

class MockSignupModelValidator: SignupModelValidatorProtocol {
    
    var isFirstNameValidated: Bool = false
    var isLastNameValidated: Bool = false
    var isEmailValidated: Bool = false
    var isPasswordValidated: Bool = false
    var isPasswordEqualityValidated: Bool = false

    func isFirstNameValid(firstName: String) -> Bool {
        isFirstNameValidated = true
        return isFirstNameValidated
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        isLastNameValidated = true
        return isLastNameValidated
    }
    
    func isEmailValid(email: String) -> Bool {
        isEmailValidated = true
        return isEmailValidated
    }
    
    func isPasswordValid(password: String) -> Bool {
        isPasswordValidated = true
        return isPasswordValidated
    }
    
    func doPasswordsMatch(password: String, repeatPassword: String) -> Bool {
        isPasswordEqualityValidated = true
        return isPasswordEqualityValidated
    }
    
}
