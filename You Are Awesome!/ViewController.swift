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
        messageLabel.text = "You are Awesome!"
    }
    
}

