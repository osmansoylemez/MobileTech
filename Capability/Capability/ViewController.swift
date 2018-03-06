//
//  ViewController.swift
//  Capability
//
//  Created by Osman SÖYLEMEZ on 06/03/2018.
//  Copyright © 2018 Osman SÖYLEMEZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        //Tuple
        print("Tuple \n")
        let parts = split(name: "Osman SÖYLEMEZ")
        print("parts[0] = " + parts.0)
        print("parts[1] = " + parts.1)
        print("parts[firstName] = " + parts.firstName)
        print("parts[lastName] = " + parts.lastName)

        //Type Inference
        print("\n================================\n")
        print("Type Inference \n")
        var university = "Gebze Üniversitesi"
        var eventTitle: String
        eventTitle = "MobileTech 4.0"
        print(university + " " + eventTitle)

        //Nested Types
        print("\n================================\n")
        print("Nested Types \n")
        let theAceOfSpades = BlackjackCard(rank: .ace, suit: .spades)
        print("theAceOfSpades: \(theAceOfSpades.description)")

        //Operator Overloading
        print("\n================================\n")
        print("Operator Overloading \n")
        print("MobileTech" * 4)
        
        //Flexibility
        let array1 = [String]()
        let array2 = Array<String>()
        let array3: [String] = Array<String>()
        let array4: Array<String> = [String]()
        
        //Generic
        print("\n================================\n")
        print("Generic\n")
        print(classNameAsString(value: "MobileTech"))
        print(classNameAsString(value: 4.0))
        print(classNameAsString(value: 2018))
        
        //Extra
        print("\n================================\n")
        print("Extra\n")
        let 😎 = "Osman SÖYLEMEZ"
        let türkçe = "Değişken isimlerine unicode yazabiliyoruz"
        print(😎 + "\n" + türkçe)
    }
    
    func split(name: String) -> (firstName: String, lastName: String) {
        let split = name.components(separatedBy: " ")
        return (split[0], split[1])
    }
    
    func classNameAsString<T>(value: T) -> String {
        return "value type is " + String(describing: type(of: value))
    }
}

extension String {
    static func *(letter: String, repeatCount: Int) -> String {
        var result = ""
        for _ in 1...repeatCount {
            result += letter + " "
        }
        return result
    }
}

