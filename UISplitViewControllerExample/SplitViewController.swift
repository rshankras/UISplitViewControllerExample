//
//  SplitViewController.swift
//  UISplitViewControllerExample
//
//  Created by Ravi Shankar on 01/04/15.
//  Copyright (c) 2015 Ravi Shankar. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the preferred display mode SplitViewController.
        
        splitViewController?.preferredDisplayMode = .PrimaryOverlay
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
