//
//  ViewController.swift
//  PirateApp
//
//  Created by Fhict on 15/09/2017.
//  Copyright © 2017 Fhict. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var commentText: String?
    var lifeText: String?
    var yearsActiveText: String?
    var countryText: String?
    
    // MARK: -  IBOutlets
    @IBOutlet weak var commentTextView: UITextView!
    @IBOutlet weak var lifeLabel: UILabel!
    @IBOutlet weak var yearsActiveLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
            commentTextView.text = commentText
            lifeLabel.text = "Life: " + lifeText!
            yearsActiveLabel.text = "Years active: " + yearsActiveText!
            countryLabel.text = "Country: " + countryText!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    


}
