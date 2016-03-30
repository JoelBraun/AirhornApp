//
//  ViewController.swift
//  GoHardMLG
//
//  Created by Joel Braun on 2/2/16.
//  Copyright © 2016 Joel Braun. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("AIRHORN", ofType: "mp3")!))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        audioPlayer.prepareToPlay()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onButtonPress(sender: AnyObject) {
        audioPlayer.play();
    }
    
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            audioPlayer.play();
        }
        if motion == .
    }
}

