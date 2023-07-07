//
//  Action.swift
//  TrainMe
//
//  Created by Richard Wise on 7/6/23.
//

import Foundation
import SwiftData

@Model
final class Action {
    var exceriseID: UUID
    var set: Int = 1
    var rep: Double
    var weight: Int
    var isSuperSet: Bool = false
    var supers: [Action]
    var isComplete: Bool = false
    var section: WorkoutSection

    init(exceriseID: UUID, set: Int, rep: Double, weight: Int, isSuperSet: Bool, supers: [Action], section: WorkoutSection) {
        self.exceriseID = exceriseID
        self.set = set
        self.rep = rep
        self.weight = weight
        self.isSuperSet = isSuperSet
        self.supers = supers
        self.section = section
    }
}
