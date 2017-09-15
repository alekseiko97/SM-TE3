//
//  AboutViewController.swift
//  MovieApp
//
//  Created by Fhict on 14/09/2017.
//  Copyright © 2017 Fhict. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var descriptionTextView: UITextView!
    


    override func viewDidLoad() {
        super.viewDidLoad()

        descriptionTextView.text = "The Godfather is a 1972 American crime film directed by Francis Ford Coppola and produced by Albert S. Ruddy, based on Mario Puzo's best-selling novel of the same name. It stars Marlon Brando and Al Pacino as the leaders of a fictional New York crime family. The story, spanning 1945 to 1955, chronicles the family under the patriarch Vito Corleone (Brando), focusing on the transformation of Michael Corleone (Pacino) from reluctant family outsider to ruthless mafia boss."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: Actions
    @IBAction func showPopUp(_ sender: UIButton)
    {
        let alertController = UIAlertController(title: "Rating", message: "IMDb movie rating is: 9.2/10", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    

}
