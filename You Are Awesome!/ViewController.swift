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
    var index = 0
    
    
    //System Event: Code Below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //User Actions: Events triggered by the user like clicking a button in this case
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the Genius Bar needs help, they call you",
                        "You Brighten My Day",
                        "I am a programmer",
                        "Hey, fabulous!",
                        "You are tremendous",
                        "You got the design skills of Jony Ive!",
                        "I can't wait to download your app!"]
        
        var newIndex = -1
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        }while newIndex==index
        
        index = newIndex
        messageLabel.text = messages[index]
        
//        messageLabel.text = messages[index]
//        if(index == messages.count-1){
//            index = 0
//        }else{
//            index+=1
//        }
        
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!" 
//        let message3 = "You Are Amazing!"
//
//        if (messageLabel.text == message1){
//            messageLabel.text = message2
//            messageLabel.textColor = UIColor.red
//        }else if(messageLabel.text == message2){
//            messageLabel.text = message3
//            messageLabel.textColor = UIColor.blue
//        }else{
//            messageLabel.text = message1
//            messageLabel.textColor = UIColor.green
//        }
    }
    
}

