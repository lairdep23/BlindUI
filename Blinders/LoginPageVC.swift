//
//  LoginPageVC.swift
//  Blinders
//
//  Created by Evan on 3/13/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class LoginPageVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var SignInButton: UIButton!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SignInButton.layer.cornerRadius = 10.0
        SignInButton.clipsToBounds = true
        
        self.EmailTextField.delegate = self
        self.PasswordTextField.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false 
    }
}
