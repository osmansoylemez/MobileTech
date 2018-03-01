//
//  ViewController.swift
//  TableViewSwift
//
//  Created by Osman SÖYLEMEZ on 01/03/2018.
//  Copyright © 2018 Osman SÖYLEMEZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var dataSource: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.dataSource = [
                            "Pazartesi",
                            "Salı",
                            "Çarşamba",
                            "Perşembe",
                            "Cuma",
                            "Cumartesi",
                            "Pazar",
                            ]
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

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableViewCellIdentifier = "TableViewCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: tableViewCellIdentifier)
        
        if (cell == nil)
        {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: tableViewCellIdentifier)
        }
        
        cell?.textLabel?.text = self.dataSource?[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.showAlert(message: self.dataSource![indexPath.row])
    }
}

