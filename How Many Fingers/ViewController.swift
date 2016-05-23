//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Roydon Jeffrey on 5/22/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userGuessTextField: UITextField!

    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func guess(sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        print(diceRoll)
        
        if diceRoll == userGuessTextField.text {
            resultLabel.text = "CORRECT, you WINNN"
            userGuessTextField.text = ""
        }else if userGuessTextField.text == "" {
            resultLabel.text = "Please enter a number!!!"
        }else {
            resultLabel.text = "WRONG, it was a " + diceRoll
            userGuessTextField.text = ""
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

