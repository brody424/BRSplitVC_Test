//
//  DetailSecondViewController.swift
//  BRSplitVCTest
//
//  Created by Madrascheck on 26/03/2020.
//  Copyright © 2020 BRBRWorld. All rights reserved.
//

import UIKit

class DetailSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftItemsSupplementBackButton = true
        self.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem
        // Do any additional setup after loading the view.
        self.navigationController?.interactivePopGestureRecognizer?.delegate = nil
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true


        

//        self.splitViewController?.show( UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "UIViewController"), sender: nil)
//        self.splitViewController?.showDetailViewController( UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "UIViewController"), sender: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
