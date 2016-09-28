//
//  ViewController.swift
//  Hello World
//
//  Created by David Moss on 5/01/2016.
//  Copyright © 2016 David Moss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var label1: UILabel!
    
    @IBAction func buttonPushed(sender: AnyObject) {
        
        print("Button Pushed")
        label1.text = "Hi Christine!"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("application did load")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

