//
//  ViewController.swift
//  Prime Checker
//
//  Created by David Moss on 7/01/2016.
//  Copyright © 2016 David Moss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var image: UIImageView!
    
 @IBAction func go(sender: AnyObject) {
        if isPrime(Int(input.text!)!) {
        image.image = UIImage(named: "tick.png")
        }
        else {
           image.image = UIImage(named: "cross.png")
    }
    }

    @IBAction func inAction(sender: UITextField) {
        
    
    }
    @IBOutlet weak var input: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        func isPrime(x:Int) -> Bool {
        var prime = true
        
        for var i=2 ; i < x ; i++ {
            if x % i == 0 {
                prime = false
                print(i)
                break
            }
        }
        
        return prime
        
    }


}

