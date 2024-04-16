//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by kieu.anh.tuanb on 01/04/2024.
//  Copyright © 2024 Sergey Kargopolov. All rights reserved.
//

import XCTest
@testable import PhotoApp

final class SignupFormModelValidatorTests: XCTestCase {
    
    var sut: SignupFormModelValidator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupFormModelValidator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testSignFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {

        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Tuan")
        
        // Assert
        XCTAssertTrue(isFirstNameValid, "isFirstNameValid should return TRUE for a valid first name but return false")
    }
    
    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "T")
         
        // Assert
        XCTAssertFalse(isFirstNameValid, "isFirstNameValid should return false when firstName < \(SignupConstants.firstNameMinLength) chars but return true")
    }
    
    func testSignupFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "TdsfsafdgdsvefbtebTdsfsafdgdsvefbtefdsfb")
         
        // Assert
        XCTAssertFalse(isFirstNameValid, "isFirstNameValid should return false when firstName > \(SignupConstants.firstNameMaxLength) chars but return true")
    }
    
    func testSignupFormModelValidator_WhenEmailValidated_ShouldReturnTrue() {
        // Arrange
        // Act
        let isEmailValid = sut.isEmailValid(email: "tuankieu.dev@gmail.com")
        // Assert
        XCTAssertTrue(isEmailValid, "isEmailValid should return TRUE for a valid first name but return false")
    }
    
    func testSignupFormModelValidator_WhenEqualPasswordProvided_ShouldReturnTrue() {
        // Arrange
        // Act
        let doPasswordsMatch = sut.doPasswordsMatch(password: "123456", repeatPassword: "123456")
        // Assert
        XCTAssertTrue(doPasswordsMatch, "doPasswordsMatch should return TRUE if password equals repeatPassword but return false")
    }
    
    func testSignupFormModelValidator_WhenNotEqualPasswordProvided_ShouldReturnFalse() {
        // Arrange
        // Act
        let doPasswordsMatch = sut.doPasswordsMatch(password: "12456", repeatPassword: "123456")
        // Assert
        XCTAssertFalse(doPasswordsMatch, "doPasswordsMatch should return FALSE if password not equals repeatPassword but return true")
    }
}
