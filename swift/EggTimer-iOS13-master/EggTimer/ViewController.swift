//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var secondsRemaining = 60
    
    var timer = Timer()
    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        secondsRemaining =  eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds")
            secondsRemaining -= 1
        } else {
            timer.invalidate()
            titleLabel.text = "Done!"
        }
    }

}
