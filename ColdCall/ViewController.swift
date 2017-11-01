//
//  ViewController.swift
//  ColdCall
//
//  Created by Chucks Mac Book on 11/1/17.
//  Copyright © 2017 Chucks Mac Book. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var NamesLabel: UILabel!
    
    var arrNames: [String] = ["Chuck", "Pat", "Rodrigo", "Chris", "Joe", "Bob" ]
    var currentName = 0
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func NamesPressed(_ sender: UIButton) {
        if currentName >= arrNames.count-1 {
            currentName = 0
        } else {
            currentName = currentName + 1
        }
        
       NamesLabel.text = arrNames[currentName]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

