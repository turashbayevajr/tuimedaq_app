//
//  RegistrationDetails.swift
//  Auth
//
//  Created by Ажар Турашбаева on 19.01.2023.
//

import Foundation

struct RegistrationDetails{
    var email: String
    var password: String
    var firstName: String
    var lastName: String
    var occupation: String
}

extension RegistrationDetails{
   static var new: RegistrationDetails{
       
        RegistrationDetails(email: "",
                            password: "",
                            firstName: "",
                            lastName: "",
                            occupation: "")
    }
}
