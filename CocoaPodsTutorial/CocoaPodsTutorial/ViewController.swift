//
//  ViewController.swift
//  CocoaPodsTutorial
//
//  Created by Osman SÖYLEMEZ on 01/03/2018.
//  Copyright © 2018 Osman SÖYLEMEZ. All rights reserved.
//

import UIKit
import SCLAlertView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK : Action
    
    @IBAction func alertviewButtonTouchUpInside(_ sender: Any) {
    
        SCLAlertView().showInfo("SCLAlertView", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    }
    
}

