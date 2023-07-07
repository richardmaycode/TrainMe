//
//  Exercise.swift
//  TrainMe
//
//  Created by Richard Wise on 7/6/23.
//

import Foundation

struct Exercise {
    let id: UUID
    let name: String
    let category: ExerciseCategory
    let muscleSegment: MuscleSegment
    let muscleGroup: MuscleGroup
    let exerciseCount: ExerciseCount
    let equipmentRequirement: EquipmentRequirement
    let allowsWeighted: Bool
    let machine: Machine
}

enum ExerciseCategory {
    case push, pull, cardio, hiit, stretch
}

enum MuscleSegment {
    case upper, lower
}

enum MuscleGroup {
    case chest, bicep, tricep, lat, deltoid
}

enum ExerciseCount {
    case repetition, distance, time
}

enum EquipmentRequirement {
    case machine, weight, mat, bands
}
