//
//  ViewController.swift
//  CustomSwipeButton
//
//  Created by Ali imran on 1/18/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var swipe_button: CustomSwipeButton!
    @IBOutlet weak var btn_reset: UIButton!
    
    override func viewDidLoad() {
        btn_reset.isHidden = true
        super.viewDidLoad()
    }

    @IBAction func swipeBtn(_ sender: CustomSwipeButton) {
        print(sender.swipe_direction)
        if sender.swipe_direction == .right {
            btn_reset.isHidden = false
        }
        if sender.swipe_direction == .left {
        }
    }
    
    @IBAction func resetFlingButton(_ sender: UIButton) {
        swipe_button.reset()
        btn_reset.isHidden = true
    }
}

