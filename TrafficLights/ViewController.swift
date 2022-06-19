//
//  ViewController.swift
//  TrafficLights
//
//  Created by kukushkin-ds on 15.06.2022.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = redLight.bounds.width / 2
        yellowLight.layer.cornerRadius = yellowLight.bounds.width / 2
        greenLight.layer.cornerRadius = greenLight.bounds.width / 2
        startButton.layer.cornerRadius = 15
        
    }

    

    @IBAction func startButtonPressed() {
        if redLight.alpha < 1 && yellowLight.alpha < 1 {
            startButton.setTitle("NEXT", for: .normal)
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        } else if yellowLight.alpha < 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
        } else if greenLight.alpha < 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        }
        
    }
    
}

