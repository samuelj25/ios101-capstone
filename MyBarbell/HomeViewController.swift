//
//  HomeViewController.swift
//  MyBarbell
//
//  Created by Samuel Jimenez on 8/4/25.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    var workouts: [Workout] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workouts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkoutCell", for: indexPath) as! WorkoutCell
        let workout = workouts[indexPath.row]
        cell.workoutLabel.text = workout.name
        
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        workouts = Workout.getWorkouts()
        print(workouts)
        tableView.dataSource = self
    }
}

