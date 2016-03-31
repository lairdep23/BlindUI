//
//  FindAnExpVC.swift
//  Blinders
//
//  Created by Evan on 3/14/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

var selectedDate: Dictionary<String, String> = [:]
var selectedKind: String = ""
var selectedBudget: String = ""

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
        if pickerView == activityPicker {
            selectedKind = kindOfActivityArray[row]
        } else if pickerView == budgetPicker {
            selectedBudget = budgetArray[row]
        } else {
            selectedKind = ""
            selectedBudget = ""
        }
        print(selectedKind, selectedBudget)
        
    }

    
    @IBAction func findButtonPressed(sender: AnyObject) {
        
        if selectedKind == "Food" {
            if selectedBudget == "$: Inexpensive" {
                selectedDate = foodCheap
            } else if selectedBudget == "$$: Moderate" {
                selectedDate = foodMod
            } else if selectedBudget == "$$$: Pricey" {
                selectedDate = foodPricey
            } else {
                selectedDate = foodHighEnd
            }
        } else if selectedKind == "Nightlife" {
            if selectedBudget == "$: Inexpensive" {
                selectedDate = nightCheap
            }
        }
        
        print(selectedDate)
        
        
        performSegueWithIdentifier("findButtonSegue", sender: nil)
            
        }
        
    
    }
    
   
    
    

