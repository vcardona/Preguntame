//
//  ViewController.swift
//  Preguntame
//
//  Created by Victor Hugo on 1/24/19.
//  Copyright © 2019 Vintage Robot. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var randomDiceIndex1 : Int = 0
    var imageDiceNames = ["ball1", "ball2","ball3","ball4","ball1"]
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButtonPressed(_ sender: Any)
    {
        changeDiceImages()
    }
    
    func changeDiceImages()
    {
        randomDiceIndex1 = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: imageDiceNames[randomDiceIndex1])
        
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        changeDiceImages()
    }
    
}

