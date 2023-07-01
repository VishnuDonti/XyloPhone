//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(button1: (sender.titleLabel?.text)!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            sender.alpha = 1
        }
       
        
    }
    
    func playSound(button1: String){
        
        let url = Bundle.main.url(forResource: button1, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    

}

