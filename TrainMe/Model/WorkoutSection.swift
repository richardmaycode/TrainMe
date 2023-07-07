//
//  WorkoutSection.swift
//  TrainMe
//
//  Created by Richard Wise on 7/6/23.
//

import Foundation
import SwiftData

@Model
final class WorkoutSection {
    let workout: Workout
    var sectionType: WorkoutSectionType
    var actions: [Action]


    init(workout: Workout, sectionType: WorkoutSectionType, actions: [Action]) {
        self.workout = workout
        self.sectionType = sectionType
        self.actions = actions
    }

    var isComplete: Bool {
        self.actions.filter { !$0.isComplete }.isEmpty
    }
}

enum WorkoutSectionType {
    case warmup, main, cardio, cooldown
}
