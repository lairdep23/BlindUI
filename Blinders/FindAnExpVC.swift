//
//  FindAnExpVC.swift
//  Blinders
//
//  Created by Evan on 3/14/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class FindAnExpVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nearCityTextField: UITextField!
    
    @IBOutlet weak var activityPicker: UIPickerView!
    
    @IBOutlet weak var budgetPicker: UIPickerView!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var findButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nearCityTextField.delegate = self
        
        findButton.layer.cornerRadius = 5.0
        findButton.clipsToBounds = true
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

}
