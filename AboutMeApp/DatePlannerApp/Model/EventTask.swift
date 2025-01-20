//
//  EventTask.swift
//  DatePlannerApp
//
//  Created by Hitesh on 20/01/25.
//

import Foundation

struct EventTask: Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isCompleted = false
    var isNew = false
}
