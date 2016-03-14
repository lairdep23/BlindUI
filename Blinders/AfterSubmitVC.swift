//
//  AfterSubmitVC.swift
//  Blinders
//
//  Created by Evan on 3/14/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class AfterSubmitVC: UIViewController {

    @IBOutlet weak var goOnDateButton: UIButton!
    
    @IBOutlet weak var backToHomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goOnDateButton.layer.cornerRadius = 5.0
        goOnDateButton.clipsToBounds = true
        backToHomeButton.layer.cornerRadius = 5.0
        backToHomeButton.clipsToBounds = true
    
    }
}
