//
//  ViewController.swift
//  Blinders
//
//  Created by Evan on 3/13/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var SignUpButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SignUpButton.layer.cornerRadius = 10.0
        SignUpButton.clipsToBounds = true
    }


}

