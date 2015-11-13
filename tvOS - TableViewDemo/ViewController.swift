//
//  ViewController.swift
//  tvOS - TableViewDemo
//
//  Created by User on 11/12/15.
//  Copyright © 2015 Elijah Buters. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var dataArray = ["San Francisco", "San Diego", "Los Angeles", "San Jose" , "Mountain View", "Sacramento"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //TableView
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: nil)
        
        cell.textLabel?.text = "\(self.dataArray[indexPath.row])"
        cell.detailTextLabel?.text = "Hello from sub title \(indexPath.row + 1)"
        
        return cell
    }


}

