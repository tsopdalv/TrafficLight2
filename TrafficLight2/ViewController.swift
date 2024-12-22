//
//  ViewController.swift
//  TrafficLight2
//
//  Created by Vladislav Kuznetsov on 22.12.24..
//

import UIKit

final class ViewController: UIViewController {
    
  
    @IBOutlet var labels: [UIView]!
    private var currentIndex = 0
    
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labels.forEach { $0.layer.cornerRadius = $0.frame.width / 2 }
        
        startButton.layer.cornerRadius = 10

    }
    
    
    @IBAction func startButtonAction() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        labels.forEach { $0.alpha = 0.3 }
        labels[currentIndex].alpha = 1.0
        currentIndex = (currentIndex + 1) % labels.count
    }
}





