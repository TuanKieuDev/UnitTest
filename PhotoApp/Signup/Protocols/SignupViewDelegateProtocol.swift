//
//  SignupViewDelegateProtocol.swift
//  PhotoApp
//
//  Created by kieu.anh.tuanb on 09/04/2024.
//  Copyright © 2024 Sergey Kargopolov. All rights reserved.
//

import Foundation

protocol SignupViewDelegateProtocol: AnyObject {
    func successfulSignup()
    func errorHandler(error: SignupError)
}
