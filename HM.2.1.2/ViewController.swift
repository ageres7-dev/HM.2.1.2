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
    }

    @IBAction func startButtonPressed() {
//        let on: CGFloat = 1
//        let off = redLightsView.alpha
        startButton.setTitle("NEXT", for: .normal)
//
//        redLightsView.alpha = 1
        print("кнопка нажата")
        print("\(redLightsView.alpha)  \(yellowLightsView.alpha) \(greenLightsView.alpha)")

        switch (redLightsView.alpha,
                yellowLightsView.alpha,
                greenLightsView.alpha) {
        case (0.30000001192092896, 0.30000001192092896, 0.30000001192092896):
            redLightsView.alpha = 1
        case (1, 0.30000001192092896, 0.30000001192092896):
            redLightsView.alpha = 0.3
            yellowLightsView.alpha = 1
        case (0.30000001192092896, 1, 0.30000001192092896):
            yellowLightsView.alpha = 0.3
            greenLightsView.alpha = 1
        case (0.30000001192092896, 0.30000001192092896, 1):
            greenLightsView.alpha = 0.3
            redLightsView.alpha = 1
        default:
            break
        }
        /*
        switch (redLightsView.alpha,
                yellowLightsView.alpha,
                greenLightsView.alpha) {
        case (0.30000001192092896, 0.30000001192092896, 0.30000001192092896):
            redLightsView.alpha = 1
        case (1, 0.30000001192092896, 0.30000001192092896):
            redLightsView.alpha = 0.3
            yellowLightsView.alpha = 1
        case (0.30000001192092896, 1, 0.30000001192092896):
            yellowLightsView.alpha = 0.3
            greenLightsView.alpha = 1
        case (0.30000001192092896, 0.30000001192092896, 1):
            greenLightsView.alpha = 0.3
            redLightsView.alpha = 1
        default:
            break
        }
        */
    }
    
}

