//
//  SignupViewControllerTests.swift
//  PhotoAppTests
//
//  Created by kieu.anh.tuanb on 09/04/2024.
//  Copyright © 2024 Sergey Kargopolov. All rights reserved.
//

import XCTest
@testable import PhotoApp

final class SignupViewControllerTests: XCTestCase {
    
    var storyboard: UIStoryboard!
    var sut: SignupViewController!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: "SignupViewController") as? SignupViewController
        sut?.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        storyboard = nil
        sut = nil
    }

    func testSignupViewController_WhenCreated_HasRequiredTextFieldsEmpty() throws {
        let firstNameTextField = try XCTUnwrap(sut.firstNameTextField, "firstNameTextField is not connected")
        let lastNameTextField = try XCTUnwrap(sut.firstNameTextField, "lastNameTextField is not connected")
        let emailTextField = try XCTUnwrap(sut.firstNameTextField, "emailTextField is not connected")
        let passwordTextField = try XCTUnwrap(sut.firstNameTextField, "passwordTextField is not connected")
        let repeatPasswordTextField = try XCTUnwrap(sut.firstNameTextField, "repeatPasswordTextField is not connected")
        
        XCTAssertEqual(firstNameTextField.text, "")
        XCTAssertEqual(lastNameTextField.text, "")
        XCTAssertEqual(emailTextField.text, "")
        XCTAssertEqual(passwordTextField.text, "")
        XCTAssertEqual(repeatPasswordTextField.text, "")
    }
    
    func testViewController_WhenCreated_HasSignupButtonAndAction() throws {
        // Arrange
        let signupButton: UIButton = try XCTUnwrap(sut.signupButton, "Signup button does not have a referencing outlet")
        
        // Act
        let signupButtonActions = try XCTUnwrap(signupButton.actions(forTarget: sut, forControlEvent: .touchUpInside), "Signup button doesn't have any actions assigned to it")
        
        // Assert
        XCTAssertEqual(signupButtonActions.count, 1, "signup button does not have any actions assigned to it")
        XCTAssertEqual(signupButtonActions.first,"signupButtonTapped:", "No action with a name signupButtonTapped assigned to signup button")
    }
    
    func testViewController_WhenSignupButtonTapped_InvokesSignupProcess() {
        
        let mockSignupModelValidator = MockSignupModelValidator()
        let signupWebService = MockSignupWebService()
        let mockSignupViewDelegate = MockSignupViewDelegate()
        
        let mockSignupPresenter = SignupPresenter(formModelValidator: mockSignupModelValidator, webservice: signupWebService, delegate: mockSignupViewDelegate)
        
        sut.signupPresenter = mockSignupPresenter
        
        sut.signupButton.sendActions(for: .touchUpInside)
        
//        XCTAssertTrue(mockSignupPresenter.processUserSignupCalled, "The processUserSignup() was not called on a Presenter when button tapped")
    }
}
