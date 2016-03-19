//
//  FindAnExpVC.swift
//  Blinders
//
//  Created by Evan on 3/14/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class FindAnExpVC: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var nearCityTextField: UITextField!
    
    @IBOutlet weak var activityPicker: UIPickerView!
    
    @IBOutlet weak var budgetPicker: UIPickerView!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var findButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nearCityTextField.delegate = self
        
        findButton.layer.cornerRadius = CR
        findButton.clipsToBounds = true
        
        activityPicker.delegate = self
        activityPicker.dataSource = self
        budgetPicker.delegate = self
        budgetPicker.dataSource = self
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == activityPicker {
            return kindOfActivityArray.count
        } else {
            return budgetArray.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == activityPicker {
            return kindOfActivityArray[row]
        } else {
            return budgetArray[row]
        }
    }
   
    
    

}