//
//  SettingsViewController.swift
//  MyBarbell
//
//  Created by Samuel Jimenez on 8/12/25.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var unitSegmentedControl: UISegmentedControl!
    @IBAction func changedUnits(_ sender: UISegmentedControl) {
        UserDefaults.standard.set(sender.selectedSegmentIndex, forKey: "unitIndex")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 0: lbs
        // 1: kgs
        let savedUnit = UserDefaults.standard.integer(forKey: "unitIndex")
        unitSegmentedControl.selectedSegmentIndex = savedUnit
    }
    
    
}
