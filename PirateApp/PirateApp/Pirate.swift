//
//  Pirate.swift
//  PirateApp
//
//  Created by Fhict on 15/09/2017.
//  Copyright © 2017 Fhict. All rights reserved.
//

import UIKit

class Pirate : CustomStringConvertible
{
    var name: String
    var life: String
    var countryOfOrigin: String
    var comments: String
    
    init(name: String, life: String, countryOfOrigin: String, comments: String) {
        self.name = name
        self.life = life
        self.countryOfOrigin = countryOfOrigin
        self.comments = comments
        
    }
   
    var description: String {
        return "name: \(name), life: \(life), country of origin: \(countryOfOrigin), comments: \(comments)"
    }
    
    

}
