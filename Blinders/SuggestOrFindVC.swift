//
//  SuggestOrFindVC.swift
//  Blinders
//
//  Created by Evan on 3/13/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class SuggestOrFindVC: UIViewController {

    @IBOutlet weak var FindAnExpImage: UIImageView!
    
    @IBOutlet weak var SuggestAnExpImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FindAnExpImage.layer.cornerRadius = 10.0
        FindAnExpImage.clipsToBounds = true
        SuggestAnExpImage.layer.cornerRadius = 10.0
        SuggestAnExpImage.clipsToBounds = true

        
    }

   
}
