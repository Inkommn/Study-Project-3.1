//
//  ViewController.swift
//  Study Project 3.1
//
//  Created by Shamkhan Mutuskhanov on 26.06.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    
    private var animationStarted = false
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBAction func startCoreAnimation(_ sender: UIButton) {
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) { [unowned self] in
                if !animationStarted {
                    coreAnimationView.frame.origin.x -= 40
                    animationStarted.toggle()
                }
            }
        
        sender.pulsate()
    }
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "shake"
        springAnimationView.curve = "easeOut"
        springAnimationView.force = 2
        springAnimationView.animate()
        
        sender.animation = "squeeze"
        sender.animate()
    }
}

