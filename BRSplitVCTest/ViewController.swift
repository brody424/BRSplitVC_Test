//
//  ViewController.swift
//  BRSplitVCTest
//
//  Created by Madrascheck on 11/03/2020.
//  Copyright © 2020 BRBRWorld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.


        self.navigationItem.leftItemsSupplementBackButton = true
        self.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem
        
        print("FFFF")
    }


}

