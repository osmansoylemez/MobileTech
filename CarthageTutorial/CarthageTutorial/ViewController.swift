//
//  ViewController.swift
//  CarthageTutorial
//
//  Created by Osman SÖYLEMEZ on 01/03/2018.
//  Copyright © 2018 Osman SÖYLEMEZ. All rights reserved.
//

import UIKit
import AlamofireImage

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: Action
    
    @IBAction func downloadButtonTouchUpInside(_ sender: Any) {
        let appleLogoURLString = "https://i1.wp.com/cuttongarments.com/wp-content/uploads/2017/12/Apple-Logo.gif"
        let appleLogoURL = URL.init(string: appleLogoURLString)
        imageView.af_setImage(withURL: appleLogoURL!, completion: { _ in
            print("Completed apple logo image :)")
        })
    }
}

