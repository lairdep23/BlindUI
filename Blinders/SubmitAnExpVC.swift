//
//  SubmitAnExpVC.swift
//  Blinders
//
//  Created by Evan on 3/14/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class SubmitAnExpVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var webAddressTextField: UITextField!
    
    @IBOutlet weak var costPicker: UIPickerView!
    
    @IBOutlet weak var categoryTextField: UIPickerView!
    
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addressTextField.delegate = self
        webAddressTextField.delegate = self
        
        submitButton.layer.cornerRadius = 5.0
        submitButton.clipsToBounds = true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    

}
