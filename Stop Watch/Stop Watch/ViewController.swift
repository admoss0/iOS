//
//  ViewController.swift
//  Stop Watch
//
//  Created by David Moss on 8/01/2016.
//  Copyright © 2016 David Moss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var seconds = 0
    var minutes = 0
    var hours = 0
    var time = "0:00:00"
    var sHours = ""
    var sMinutes = ""
    var sSeconds = ""
    var clock = NSTimer()
    
        func tick() {
            seconds++
            if seconds == 60 {
                seconds = 0
                minutes++
            }
            if minutes == 60 {
                minutes = 0
                hours++
            }
            
            sSeconds = String(seconds)
            if sSeconds.characters.count == 1 {
                sSeconds = "0" + sSeconds
            }
            sMinutes = String(minutes)
            if sMinutes.characters.count == 1 {
                sMinutes = "0" + sMinutes
            }
            
            sHours = String(hours)
            
            time = sHours + ":" + sMinutes + ":" + sSeconds
        timeLabel.text = time
    }

    @IBAction func go(sender: AnyObject) {
   clock = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("tick"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func reset(sender: AnyObject) {
        clock.invalidate()
        seconds = 0
        minutes = 0
        hours = 0
        time = "0:00:00"
        timeLabel.text = time
    }

    @IBAction func pause(sender: AnyObject) {
        
        clock.invalidate()
    }
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = time
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    



}

