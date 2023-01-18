//
//  LoginCredentials.swift
//  Auth
//
//  Created by Ажар Турашбаева on 19.01.2023.
//

import Foundation

struct LoginCredentials{
    var email: String
    var password: String
}

extension LoginCredentials{
    static var new: LoginCredentials{
        LoginCredentials(email: "", password: "")
    }
}
