//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Tom Kotopoulos on 1/14/19.
//  Copyright © 2019 Tom Kotopoulos. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImageView: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 5
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
    
    
    //System Event: Code Below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //User Actions: Events triggered by the user like clicking a button in this case
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        
        //Show a message
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        }while index==newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        
        //Show a image
        repeat{
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(newIndex)")
        
        
        //Get a random sound
        repeat{
            newIndex = Int.random(in: 0..<numberOfSounds)
        }while soundIndex==newIndex
        
        soundIndex = newIndex
        //Play a sound
        var soundName = "sound\(soundIndex)"
        
        //can we load in the file soundName
        if let sound = NSDataAsset(name: soundName){
            
            //check to see if sound.data is actually a sound file and play
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            // catch error if sound.data isn't a sound file
            } catch {
                print("ERROR: The data in \(soundName) couldn't be loaded")
            }
        }else{
            print("ERROR: The file \(soundName) didn't load")
        }
        
    }
    
}

