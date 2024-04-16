//
//  MockSignupPresenter.swift
//  PhotoAppTests
//
//  Created by kieu.anh.tuanb on 10/04/2024.
//  Copyright © 2024 Sergey Kargopolov. All rights reserved.
//

import Foundation
@testable import PhotoApp

class MockSignuPresenter: SignupPresenterProtocol {
    
    var processUserSignupCalled: Bool = false
    
    required init(formModelValidator: PhotoApp.SignupModelValidatorProtocol, webservice: PhotoApp.SignupWebServiceProtocol, delegate: PhotoApp.SignupViewDelegateProtocol) {
        
    }
    
    func processUserSignup(formModel: PhotoApp.SignupFormModel) {
        processUserSignupCalled = true
    }
    
}
