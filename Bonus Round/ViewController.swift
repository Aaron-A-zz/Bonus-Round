//
//  ViewController.swift
//  Bonus Round
//
//  Created by Aaron Ackerman on 4/12/15.
//  Copyright (c) 2015 Aaron Ackerman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var SwitchButton: UISwitch!

    @IBOutlet weak var ninjaViewNorth: UIImageView!
    @IBOutlet weak var ninjaViewEast: UIImageView!
    
    @IBOutlet weak var ninjaViewSouth: UIImageView!
    
    @IBOutlet weak var ninjaViewWest: UIImageView!
    
    @IBOutlet weak var ninjasLabelOne: UILabel!
    
    @IBOutlet weak var ninjasLabelTwo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ninjaSwitch(sender: AnyObject) {
        
        if SwitchButton.on {
            
            //North
            self.ninjaViewNorth.transform = CGAffineTransformMakeTranslation(0, -500)
            springWithDelay(0.3, 0.10, {
            self.ninjaViewNorth.transform = CGAffineTransformMakeTranslation(0, 0)
            })
            
            //South
            self.ninjaViewSouth.transform = CGAffineTransformMakeTranslation(0, 500)
            springWithDelay(0.3, 0.60, {
                self.ninjaViewSouth.transform = CGAffineTransformMakeTranslation(0, 0)
            })
            
            //East
            self.ninjaViewEast.transform = CGAffineTransformMakeTranslation(300, 0)
            springWithDelay(0.3, 0.45, {
                self.ninjaViewEast.transform = CGAffineTransformMakeTranslation(0, 0)
            })
            
            //West
            self.ninjaViewWest.transform = CGAffineTransformMakeTranslation(-300, 0)
            springWithDelay(0.3, 0.25, {
                self.ninjaViewWest.transform = CGAffineTransformMakeTranslation(0, 0)
            })
            
            //ninjaLabelOne
            self.ninjasLabelOne.transform = CGAffineTransformMakeTranslation(-300, 0)
            springWithDelay(0.2, 0.85, {
                self.ninjasLabelOne.transform = CGAffineTransformMakeTranslation(0, 0)
            })
            
            //ninjaLabelTwo
            self.ninjasLabelTwo.transform = CGAffineTransformMakeTranslation(300, 0)
            springWithDelay(0.2, 1.60 , {
                self.ninjasLabelTwo.transform = CGAffineTransformMakeTranslation(0, 0)
            })

            ninjaViewNorth.hidden = false
            ninjaViewEast.hidden = false
            ninjaViewSouth.hidden = false
            ninjaViewWest.hidden = false
            ninjasLabelOne.hidden = false
            ninjasLabelTwo.hidden = false
        } else {
            ninjaViewNorth.hidden = true
            ninjaViewEast.hidden = true
            ninjaViewSouth.hidden = true
            ninjaViewWest.hidden = true
            ninjasLabelOne.hidden = true
            ninjasLabelTwo.hidden = true
        }
        
    }


}

