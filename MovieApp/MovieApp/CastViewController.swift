//
//  CastViewController.swift
//  MovieApp
//
//  Created by Fhict on 14/09/2017.
//  Copyright © 2017 Fhict. All rights reserved.
//

import UIKit

class CastViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Properties
    
    
    var actorList = [Actor]()
    var identities = ["A", "B", "C", "D", "E"]
    
    private func loadActors()
    {
      
        
        guard let actor1 = Actor(name: "Al Pacino", photo: #imageLiteral(resourceName: "Al Pacino"), role: "Michael Corleone") else {
            fatalError("Unable to instantiate actor1")
        }
        guard let actor2 = Actor(name: "Marlon Brando", photo: #imageLiteral(resourceName: "Marlon Brando"), role: "Don Vito Corleone") else {
            fatalError("Unable to instantiate actor2")
        }
        guard let actor3 = Actor(name: "James Caan", photo: #imageLiteral(resourceName: "James Caan"), role: "Sonny Corleone") else {
            fatalError("Unable to instantiate actor3")
        }
        guard let actor4 = Actor(name: "Robert Duvall", photo: #imageLiteral(resourceName: "Robert Duvall"), role: "Tom Hagen") else {
            fatalError("Unable to instantiate actor4")
        }
        
        actorList += [actor1, actor2, actor3, actor4]
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        
        return 1
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(actorList.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
         let cellIdentifier = "TableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TableViewCell  else {
            fatalError("The dequeued cell is not an instance of TableViewCell.")
        }
        

        let actor = actorList[indexPath.row]
        
        cell.nameLabel.text = actor.name
        cell.photoImageView.image = actor.photo
        cell.roleLabel.text = actor.role
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadActors()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}
