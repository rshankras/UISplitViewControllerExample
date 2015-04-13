//
//  ListTableViewController.swift
//  UISplitViewControllerExample
//
//  Created by Ravi Shankar on 01/04/15.
//  Copyright (c) 2015 Ravi Shankar. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    let names = ["One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier", forIndexPath: indexPath) as! UITableViewCell
        
        cell.selected = true
        cell.textLabel?.text = names[indexPath.row]
    
        return cell
    }
    
    // MARK:- Storyboard segue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "ShowDetailIdentifier") {
            var detail: DetailViewController
            if let navigationController = segue.destinationViewController as? UINavigationController {
                detail = navigationController.topViewController as! DetailViewController
            } else {
                detail = segue.destinationViewController as! DetailViewController
            }
            
            if let path = tableView.indexPathForSelectedRow() {
                detail.selectedIndex = path.row + 1
            }
        }
    }
}
