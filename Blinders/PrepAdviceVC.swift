//
//  PrepAdviceVC.swift
//  Blinders
//
//  Created by Evan on 3/18/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class PrepAdviceVC: UIViewController {

    @IBOutlet weak var getDirectionsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getDirectionsButton.layer.cornerRadius = CR
        getDirectionsButton.clipsToBounds = true
    }

    

}
