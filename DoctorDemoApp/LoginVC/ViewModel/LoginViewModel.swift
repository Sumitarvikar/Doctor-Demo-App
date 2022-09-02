//
//  LoginViewModel.swift
//  DoctorDemoApp
//
//  Created by Josh on 31/08/22.
//

import Foundation
import UIKit


protocol LoginViewModelDelegate {
    func didReceiveLoginResponse(loginResponse: Any?)
    func alertToConfirmOtp()
}
struct LoginViewModel{
    var delegate : LoginViewModelDelegate?
    
    func loginUser(username : String , password : String){
        let validation = LoginValidation().Validate(username: username, password: password)
        let authorization : String? = UserDefaults.standard.value(forKey: Constants.KKeyValues.KAuthorizationToken) as? String
        let deviceId :String = UIDevice.current.identifierForVendor!.uuidString
        if(validation.succes){
            
            DataServiceManager.shared.loginUser(username: username, password: password) {
                (response) in
                // print(response)
                DispatchQueue.main.async {
                    if let auth = authorization {
                        self.delegate?.didReceiveLoginResponse(loginResponse: response)              }
                    else{
                        self.delegate?.alertToConfirmOtp()                           }
                    print("###################")
                    print(response)
                    
                }
            }
        }
    }
}


