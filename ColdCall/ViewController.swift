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
    @IBOutlet weak var RandomNum: UILabel!
    
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
        
        let rnd = getRandom()
        RandomNum.text = String(rnd)
        RandomNum.textColor = getColor(num: rnd)
    }
    
    func getRandom()->Int{
        return Int(arc4random_uniform(UInt32(4)))+1
    }
    
    func getColor(num: Int)->UIColor{
        var strColor: UIColor = UIColor.black
        if num == 1 || num == 2 {
            strColor = UIColor.red
        } else if num == 3 || num == 4 {
            strColor = UIColor.blue
        } else if num == 5 {
            strColor = UIColor.green
        }
        return strColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

