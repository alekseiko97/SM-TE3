//
//  TableViewController.swift
//  PirateApp
//
//  Created by Fhict on 20/09/2017.
//  Copyright © 2017 Fhict. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    // MARK: - IBOutlets
    
    
    var pirates = [Pirate]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parseData()
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
  

    // MARK: - Table view data source
    
   
    
    func parseData() {
        
        pirates = []
        
        let url = "https://i886625.venus.fhict.nl/pirates.json"
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"
        
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration, delegate: nil, delegateQueue: OperationQueue.main)
        
        let task = session.dataTask(with: request) { (data, response, error) in
            
            if (error != nil)
            {
                print("Error")
            } else
            {
                
                do {
                    
                    let fetchedData = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves) as! NSArray
                   
                    for pirate in fetchedData {
                        
                        let eachPirate = pirate as! [String: Any]
                        let name = eachPirate["name"] as! String
                        let life = eachPirate["life"] as! String
                        let countryOfOrigin = eachPirate["country_of_origin"] as! String
                        let comments = eachPirate["comments"] as! String
                        
                        self.pirates.append(Pirate(name: name, life: life, countryOfOrigin: countryOfOrigin, comments: comments))
                    }
                    self.tableView.reloadData()
                    
                }
                    catch
                    {
                        print("Error")
                    }
                }
            
            }
        task.resume()
        }


        

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pirates.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell  else {
            fatalError("The dequeued cell is not an instance of TableViewCell.")
        }
        let pirate = pirates[indexPath.row]
        cell.nameLabel?.text = pirate.name
        return cell;
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue" {
            if let indexPath = tableView.indexPathForSelectedRow
            {
                let guest = segue.destination as! ViewController
                guest.commentText = pirates[indexPath.row].comments
                guest.lifeText = pirates[indexPath.row].life
                guest.countryText  = pirates[indexPath.row].countryOfOrigin
            }
        }
        
        
        
    }
    


}
