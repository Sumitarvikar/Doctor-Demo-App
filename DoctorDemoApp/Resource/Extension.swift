//
//  Extension.swift
//  DoctorDemoApp
//
//  Created by Josh on 31/08/22.
//

import Foundation

import UIKit

extension UIViewController {
    
    
    func showAlert(title: String?, message: String?, firstActionTitle:String?, secondActionTitle:String?, alertStyle:UIAlertController.Style, firstActionStyle:UIAlertAction.Style?, secondActionStyle:UIAlertAction.Style?, firstActionHandler:((UIAlertAction) -> Void)?, secondActionHandler:((UIAlertAction) -> Void)?){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: alertStyle)
        if let first = firstActionTitle {
            let action = UIAlertAction(title: first, style: firstActionStyle ?? .default, handler: firstActionHandler)
            alert.addAction(action)
        }
        
        if let second = secondActionTitle {
            let action = UIAlertAction(title: second, style: secondActionStyle ?? .default, handler: secondActionHandler)
            alert.addAction(action)
        }
        
        self.present(alert, animated: true, completion: nil)
    }
}


    
    extension UITextField
    {
        func setLeftPadding(){
            self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
            self.leftViewMode = .always
        }
    }


extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
    var releaseVersionNumberPretty: String {
        return "v\(releaseVersionNumber ?? "1.0.0")"
    }
}
    
