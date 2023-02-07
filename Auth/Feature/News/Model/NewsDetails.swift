//
//  NewsDetails.swift
//  Auth
//
//  Created by Ажар Турашбаева on 07.02.2023.
//

import Foundation

struct News: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var description: String
}
