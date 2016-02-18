//
//  ViewController.swift
//  Finger Guess
//
//  Created by David Moss on 6/01/2016.
//  Copyright © 2016 David Moss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pick:Int = 0

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var score: UIImageView!
    
    @IBAction func b1(sender: AnyObject) {
        
        pick = getRnd()
        print("the random number is \(pick)")
        image.image = UIImage (named: String(pick)+".png")
        
        if pick == 1 {
        score.image = UIImage (named: "tick.png")
        }
        else {
            score.image = UIImage (named: "cross.png")
        }
    }
    
    
    @IBAction func b2(sender: AnyObject) {
        pick = getRnd()
        print("the random number is \(pick)")
        image.image = UIImage (named: String(pick)+".png")
        
        if pick == 2 {
            score.image = UIImage (named: "tick.png")
        }
        else {
            score.image = UIImage (named: "cross.png")
        }
    }
    
    
    @IBAction func b3(sender: AnyObject) {
        pick = getRnd()
        print("the random number is \(pick)")
        image.image = UIImage (named: String(pick)+".png")
        
        if pick == 3 {
            score.image = UIImage (named: "tick.png")
        }
        else {
            score.image = UIImage (named: "cross.png")
        }

    }
    
    @IBAction func b4(sender: AnyObject) {
        pick = getRnd()
        print("the random number is \(pick)")
        image.image = UIImage (named: String(pick)+".png")
        
        if pick == 4 {
            score.image = UIImage (named: "tick.png")
        }
        else {
            score.image = UIImage (named: "cross.png")
        }

    }
    
    
    @IBAction func b5(sender: AnyObject) {
        pick = getRnd()
        print("the random number is \(pick)")
        image.image = UIImage (named: String(pick)+".png")
        
        if pick == 5 {
            score.image = UIImage (named: "tick.png")
        }
        else {
            score.image = UIImage (named: "cross.png")
        }

    }
    
    @IBAction func replay(sender: AnyObject) {
        image.image = UIImage (named: "0.png")
        score.image = nil
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getRnd() -> Int {
        var x:Int
        x = Int(arc4random_uniform(5)) + 1
        
        print("rnd produced \(x)")
        return x
    }
    
    
    func disable () {
        
    }


}

