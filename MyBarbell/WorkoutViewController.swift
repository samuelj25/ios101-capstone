//
//  WorkoutViewController.swift
//  MyBarbell
//
//  Created by Samuel Jimenez on 8/5/25.
//

import Foundation
import UIKit

class WorkoutViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    @IBAction func startTimer(_ sender: UIButton) {
        timer?.invalidate()
        timeRemaining = 15
        updateLabel()
        
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(updateTimer),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    var timer: Timer?
    // Hard coded for visual purposes
    var timeRemaining = 15
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLabel()
    }
    
    @objc func updateTimer() {
            if timeRemaining > 0 {
                timeRemaining -= 1
                updateLabel()
            } else {
                timer?.invalidate()
                timer = nil
                showTimeUpAlert()
            }
        }

    func updateLabel() {
        let minutes = timeRemaining / 60
        let seconds = timeRemaining % 60
        timerLabel.text = String(format: "%02d:%02d", minutes, seconds)
    }
    
    func showTimeUpAlert() {
        let alert = UIAlertController(title: "Time's Up",
                                      message: "You're ready to do your next set!",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default))
        present(alert, animated: true)
    }
    
}
