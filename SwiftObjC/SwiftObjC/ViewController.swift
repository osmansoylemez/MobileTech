//
//  ViewController.swift
//  SwiftObjC
//
//  Created by Osman SÖYLEMEZ on 01/03/2018.
//  Copyright © 2018 Osman SÖYLEMEZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func showAlert(message: String) {
        
        let alertController = UIAlertController(title: "Uyarı",
                                                message: message,
                                                preferredStyle: .alert)
        
        let alertAction = UIAlertAction.init(title: NSLocalizedString("Tamam", comment: "comment"),
                                             style: .default,
                                             handler: nil)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    // MARK: Action
    @IBAction func deviceNameTouchUpIsnide(_ sender: Any) {
        self.showAlert(message: DeviceInfo.deviceName())
    }
    
}

