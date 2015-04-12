//
//  SpringAnimation.swift
//  Bonus Round
//
//  Created by Aaron Ackerman on 4/12/15.
//  Copyright (c) 2015 Aaron Ackerman. All rights reserved.
//
import UIKit
import Foundation

var duration = 0.7
var delay = 0.0
var damping = 0.7
var velocity = 0.7

func springWithDelay(duration: NSTimeInterval, delay: NSTimeInterval, animations: (() -> Void)!) {
    
    UIView.animateWithDuration(duration, delay: delay, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.8, options: nil, animations: {
        
        animations()
        
        }, completion: { finished in
            
    })
}
