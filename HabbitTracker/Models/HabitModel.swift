//
//  HabitModel.swift
//  HabbitTracker
//
//  Created by Руслан on 22.06.2024.
//

import Foundation

struct HabitModel : Codable, Hashable {
    
    var name: String
    var descriptionText: String
    var color: String
    var StartDate: Date
    var howOften : [String]
    var timeIn: Int
    var timeOut: Int
}
