//
//  Constants.swift
//  CompanyManagementApp
//
//  Created by Hasan Esat Tozlu on 16.11.2022.
//

import Foundation


// Çalışan title'ları enum'ı
enum EmployeeType: Double{
    case junior     = 1
    case midLevel   = 1.5
    case senior     = 2
    case lead       = 2.5
    case manager    = 3
}


// Medeni hal enum'ı
enum MaritalStatus: Bool, Codable {
    case married    = true
    case single     = false
}


// MaritalStatus Bool rawValue'lu enum oluşturabilmek için Bool extention'ı.
extension Bool: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self = value != 0
    }
}
