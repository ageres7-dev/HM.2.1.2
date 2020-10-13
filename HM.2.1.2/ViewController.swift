//
//  ViewController.swift
//  HM.2.1.2
//
//  Created by Сергей Долгих on 13.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightsView: UIView!
    @IBOutlet var yellowLightsView: UIView!
    @IBOutlet var greenLightsView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightsView.layer.cornerRadius = 50
        yellowLightsView.layer.cornerRadius = 50
        greenLightsView.layer.cornerRadius = 50
        
        redLightsView.alpha = 0.3
        yellowLightsView.alpha = 0.3
        greenLightsView.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        redLightsView.alpha = 1
        
    }
    
}

