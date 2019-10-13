//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by lucie on 13/10/2019.
//  Copyright © 2019 lucie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballImages = [#imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball1")]
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButton(_ sender: UIButton) {
        
        imageView.image = ballImages.randomElement()
        
    }
   


}

