//
//  Actor.swift
//  MovieApp
//
//  Created by Fhict on 15/09/2017.
//  Copyright © 2017 Fhict. All rights reserved.
//

import UIKit

class Actor
    
{

        //MARK: Properties
        
        var name: String
        var photo: UIImage?
        var role: String
    
        //MARK: Initialization
        
    init?(name: String, photo: UIImage?, role: String) {
        
            // The name must not be empty
            guard !name.isEmpty else {
                return nil
            }
        
            guard !role.isEmpty else {
            return nil
            }
        
            // Initialize stored properties.
            self.name = name
            self.photo = photo
            self.role = role
            
    }
}
