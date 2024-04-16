//
//  SignupFormRequestModel.swift
//  PhotoApp
//
//  Created by kieu.anh.tuanb on 03/04/2024.
//  Copyright © 2024 Sergey Kargopolov. All rights reserved.
//

import Foundation

struct SignupFormRequestModel: Encodable {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
}
