//
//  ViewController.swift
//  UISplitViewControllerExample
//
//  Created by Ravi Shankar on 01/04/15.
//  Copyright (c) 2015 Ravi Shankar. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var numberLabel:UILabel?
    
    var selectedIndex:Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberLabel?.text = "\(selectedIndex)"
        
        // add back button to the navigation bar.
        
        if splitViewController?.respondsToSelector("displayModeButtonItem") == true {
            navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
            navigationItem.leftItemsSupplementBackButton = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

