//
//  ViewController.swift
//  PirateApp
//
//  Created by Fhict on 15/09/2017.
//  Copyright © 2017 Fhict. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var commentTextView: UITextView!
    
    
    var commentPirate = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentTextView.text = commentPirate
        
    }
    


}
