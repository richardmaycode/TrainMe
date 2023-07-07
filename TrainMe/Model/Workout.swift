//
//  Workout.swift
//  TrainMe
//
//  Created by Richard Wise on 7/6/23.
//

import Foundation
import SwiftData

@Model
final class Workout {
    var name: String
    var summary: String

    var sections: [WorkoutSection]
    var isComplete: Bool = false
    var assignmentType: AssignmentType
    var assignments: [UUID] = []

    init(name: String, summary: String, sections: [WorkoutSection], isComplete: Bool, assignmentType: AssignmentType) {
        self.name = name
        self.summary = summary
        self.sections = sections
        self.isComplete = isComplete
        self.assignmentType = assignmentType
    }

}

enum AssignmentType {
    case personal, client
}
