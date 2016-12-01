//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Margara Tejera on 01/12/2016.
//  Copyright © 2016 Margara Tejera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var ballIndex : Int = 0

    @IBOutlet weak var ballImageView: UIImageView!
    
    @IBAction func shakeButtonPressed(_ sender: UIButton) {
        pickRandomBall();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickRandomBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func pickRandomBall() {
        
        ballIndex = Int(arc4random_uniform(5))
       
        ballImageView.image = UIImage(named: ballArray[ballIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        pickRandomBall()
    }
}

