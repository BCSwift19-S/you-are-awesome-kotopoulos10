//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Tom Kotopoulos on 1/14/19.
//  Copyright © 2019 Tom Kotopoulos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    
    //System Event: Code Below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //User Actions: Events triggered by the user like clicking a button in this case
    @IBAction func showMessagePressed(_ sender: UIButton) {
        if (messageLabel.text == "You Are Awesome!"){
            messageLabel.text = "You Are Great!"
            messageLabel.textColor = UIColor.red
        }else if(messageLabel.text == "You Are Great!"){
            messageLabel.text = "You Are Amazing!"
            messageLabel.textColor = UIColor.blue
        }else{
            messageLabel.text = "You Are Awesome!"
            messageLabel.textColor = UIColor.green
        }
    }
    
}

