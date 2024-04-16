//
//  SignupModelValidatorProtocol.swift
//  PhotoApp
//
//  Created by kieu.anh.tuanb on 04/04/2024.
//  Copyright © 2024 Sergey Kargopolov. All rights reserved.
//

import Foundation

protocol SignupModelValidatorProtocol {
    func isFirstNameValid(firstName: String) -> Bool
    
    func isLastNameValid(lastName: String) -> Bool
    
    func isEmailValid(email: String) -> Bool
    
    func isPasswordValid(password: String) -> Bool
    
    func doPasswordsMatch(password: String, repeatPassword: String) -> Bool
}
