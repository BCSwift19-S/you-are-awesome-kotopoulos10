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
    
    func nonRepeatingRandom(lastNumber: Int,  maxValue: Int) -> Int {
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        }while lastNumber == newIndex
        return newIndex
    }
    
    //Play a sound
    func playSound (soundName: String, audioPlayer: inout AVAudioPlayer){
        //can we load in the file soundName
        if let sound = NSDataAsset(name: soundName){
            
            //check to see if sound.data is actually a sound file and play
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
                // catch error if sound.data isn't a sound file
            } catch {
                print("ERROR: The data in \(soundName) couldn't be loaded")
            }
        }else{
            print("ERROR: The file \(soundName) didn't load")
        }
    }

    //User Actions: Events triggered by the user like clicking a button in this case
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        //Show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //Show a image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //Get a random sound
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        
    }
    
}
