//
//  LoginValidation.swift
//  DoctorDemoApp
//
//  Created by Josh on 31/08/22.
//

import Foundation

struct LoginValidation {
    
    func Validate(username: String , password : String) -> ValidationResult {
        
        if (username.isEmpty){
            return  ValidationResult(succes: false, error: "username is not avalible")
        }
        if (password.isEmpty){
            return ValidationResult(succes: false, error: "Password is not avilable")
        }
        return ValidationResult(succes: true, error: nil )
    }
}

