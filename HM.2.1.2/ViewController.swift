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
    
    private var currentLightsView: UIView?
    private let onLights: CGFloat = 1
    private let offLights: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightsView.layer.cornerRadius =
            redLightsView.frame.width / 2
        yellowLightsView.layer.cornerRadius =
            yellowLightsView.frame.width / 2
        greenLightsView.layer.cornerRadius =
            greenLightsView.frame.width / 2
        
        redLightsView.alpha = offLights
        yellowLightsView.alpha = offLights
        greenLightsView.alpha = offLights
        
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        if currentLightsView == nil {
            redLightsView.alpha = onLights
            currentLightsView = redLightsView
        } else if currentLightsView == redLightsView {
            currentLightsView?.alpha = offLights
            currentLightsView = yellowLightsView
            currentLightsView?.alpha = onLights
        } else if currentLightsView == yellowLightsView {
            currentLightsView?.alpha = offLights
            currentLightsView = greenLightsView
            currentLightsView?.alpha = onLights
        } else if currentLightsView == greenLightsView {
            currentLightsView?.alpha = offLights
            currentLightsView = redLightsView
            currentLightsView?.alpha = onLights
        }
    }
}

