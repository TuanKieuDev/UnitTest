//
//  SignupFormModelValidator.swift
//  PhotoApp
//
//  Created by kieu.anh.tuanb on 01/04/2024.
//  Copyright © 2024 Sergey Kargopolov. All rights reserved.
//

import Foundation

class SignupFormModelValidator: SignupModelValidatorProtocol {
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        
        if firstName.count < SignupConstants.firstNameMinLength || firstName.count > SignupConstants.firstNameMaxLength {
            returnValue = false
        }
        
        return returnValue
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        var returnValue = true
        
        if lastName.count < SignupConstants.firstNameMinLength || lastName.count > SignupConstants.firstNameMaxLength {
            returnValue = false
        }
        
        return returnValue
    }
    
    func isEmailValid(email: String) -> Bool {
        // Regular expression pattern to validate email
        let emailRegex = #"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"#
        
        // Create NSPredicate with regular expression pattern
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        
        // Test if email matches the pattern
        return emailPredicate.evaluate(with: email)
    }
    
    func isPasswordValid(password: String) -> Bool {
        var returnValue = true
        
        if password.count < SignupConstants.firstNameMinLength || password.count > SignupConstants.firstNameMaxLength {
            returnValue = false
        }
        
        return returnValue
    }
    
    func doPasswordsMatch(password: String, repeatPassword: String) -> Bool {
        return password == repeatPassword
    }
}
