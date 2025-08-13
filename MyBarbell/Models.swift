//
//  Models.swift
//  MyBarbell
//
//  Created by Samuel Jimenez on 8/12/25.
//

import UIKit
import Foundation

struct Workout: Codable {
    var name: String
    var date: Date
    var exercises: [Exercise]
}

struct Exercise: Codable {
    var name: String
    var sets: Int
    var reps: Int
    var weight: Double
}

extension Workout {
    static var tasksKey: String {
        return "Workout"
    }
    
    static func getWorkouts() -> [Workout] {
        let defaults = UserDefaults.standard
        if let savedData = defaults.data(forKey: tasksKey) {
            let decodedData = try! JSONDecoder().decode([Workout].self, from: savedData)
            return decodedData
        }
        return []
    }
    
    static func save(_ workouts: [Workout]) {
        let defaults = UserDefaults.standard
        let encodedData = try? JSONEncoder().encode(workouts)
        defaults.set(encodedData, forKey: tasksKey)
    }
    
    func save() {
        var workouts = Workout.getWorkouts()
        workouts.append(self)
        Workout.save(workouts)
    }
}

struct ExerciseLibrary {
    static let allExercises = [
        "Bench Press",
        "Incline Bench Press",
        "Overhead Press",
        "Squat",
        "Deadlift",
        "Barbell Row",
        "Pull Up",
        "Push Up",
        "Bicep Curl",
        "Tricep Pushdown"
    ]
}
