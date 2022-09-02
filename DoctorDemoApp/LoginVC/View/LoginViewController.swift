//
//  ViewController.swift
//  DoctorDemoApp
//
//  Created by Josh on 31/08/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var iUserNameTextField: UITextField!
    @IBOutlet weak var iPasswordTextField: UITextField!
    @IBOutlet weak var iLoginBtn: UIButton!
    var loginVM = LoginViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginVM.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginButtonClicked(_ sender: Any) {
        
        loginVM.loginUser(username: "sumit.arvikar@joshsoftware.come", password: "2319")
        
    }
}
extension LoginViewController : LoginViewModelDelegate{
    func alertToConfirmOtp() {
        
        
        
        
        let alertController = UIAlertController(title: "Otp", message: "", preferredStyle: .alert)
        
        alertController.addTextField { field in
            field.placeholder = "Enter Otp here"
        }
        
        
        
        alertController.addAction(UIAlertAction(title: "Submit", style: .default, handler: { _ in
            guard let fields = alertController.textFields else {return }
            
            let otp = fields[0].text
            
            DataServiceManager.shared.verifyotp(userName: "sumit.arvikar@joshsoftware.come", otp: otp!) { result in
                print("result")
            }
            
            
        }))
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        
        self.present(alertController, animated: true)
    }
    func didReceiveLoginResponse(loginResponse: Any?){
        
        print(loginResponse)
        if let resp = loginResponse
        {
            let vc = HomeViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
        else if let err = loginResponse as? Error
        {
            showAlert(title:"Error" , message: "Error" , firstActionTitle: Constants.KLabel.KOk, secondActionTitle: nil, alertStyle: .alert, firstActionStyle: .default, secondActionStyle: nil, firstActionHandler: nil, secondActionHandler: nil)
        }
    }
    
    
    
    
    
    
    
}

