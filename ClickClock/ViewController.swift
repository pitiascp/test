//
//  ViewController.swift
//  ClickClock
//
//  Created by Pitias on 9/24/16.
//  Copyright © 2016 Pitias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var btnStop: UIButton!
    var count: Int = 0
    var gio: Int = 0
    var phut: Int = 0
    var timer : NSTimer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnPlay(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.001, target: self, selector: Selector("text"), userInfo: nil, repeats: true)
    }
    
    func text(){
        count = count + 1
        if (count == 100){
            phut += 1
            count = 0
        }
        if (phut == 60){
            gio += 1
            phut = 0
        }
        let a = String(gio) + ":" + String(phut) + ":" + String(count)
        lblTime.text = a
        
    }

    @IBAction func btnStop(sender: AnyObject) {
    }

}

