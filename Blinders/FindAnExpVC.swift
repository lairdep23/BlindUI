//
//  FindAnExpVC.swift
//  Blinders
//
//  Created by Evan on 3/14/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

var selectedDate: Dictionary<String, String> = [:]

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
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
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
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if kindOfActivityArray[row] == "Food" {
            if budgetArray[row] == "$: Inexpensive" {
                selectedDate = foodCheap
            } else if budgetArray[row] == "$$: Moderate"{
                selectedDate = foodMod
            } else {
                print("No date")
            }
        } else {
            print("No Date")
        }
        
        print(selectedDate)
    }

    
    @IBAction func findButtonPressed(sender: AnyObject) {
        
        
        
        
        performSegueWithIdentifier("findButtonSegue", sender: nil)
            
        }
        
    
    }
    
   
    
    

