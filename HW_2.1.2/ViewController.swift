//
//  ViewController.swift
//  HW_2.1.2
//
//  Created by Андрей Аверьянов on 20.08.2020.
//  Copyright © 2020 Андрей Аверьянов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
    }
    override func viewWillLayoutSubviews() {
        redColor.layer.cornerRadius = redColor.frame.size.width/2
        yellowColor.layer.cornerRadius = yellowColor.frame.size.width/2
        greenColor.layer.cornerRadius = greenColor.frame.size.width/2
    }
    
    @IBAction func startButtonpressed() {
        if redColor.alpha == CGFloat(Float(0.3)) &&
            yellowColor.alpha == CGFloat(Float(0.3)) &&
            greenColor.alpha == CGFloat(Float(0.3)) {
            redColor.alpha = 1
            startButton.setTitle("Next", for: .normal)
        } else if yellowColor.alpha == CGFloat(Float(0.3)) &&
            redColor.alpha == 1 &&
            greenColor.alpha == CGFloat(Float(0.3)) {
            redColor.alpha = 0.3
            yellowColor.alpha = 1
            startButton.setTitle("Next", for: .normal)
        } else if greenColor.alpha == CGFloat(Float(0.3)) && yellowColor.alpha == 1 && redColor.alpha == CGFloat(Float(0.3)) {
            redColor.alpha = 0.3
            yellowColor.alpha = 0.3
            greenColor.alpha = 1
            startButton.setTitle("Next", for: .normal)
        } else {
            redColor.alpha = 1
            yellowColor.alpha = 0.3
            greenColor.alpha = 0.3
        }
    }
    
}

