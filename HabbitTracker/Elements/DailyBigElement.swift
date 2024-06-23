//
//  DailyBigElement.swift
//  HabbitTracker
//
//  Created by Руслан on 23.06.2024.
//

import SwiftUI

struct DailyBigElement: View {
    var nameOfHabit: String
    var dateHabit: String
    var image: String
    var inTime: String
    var outTime: String
    var color: String
    
    var body: some View {
        ZStack {
            VStack {
                Text(nameOfHabit)
                HStack {
                    Text()
                    Text()
                    HStack {
                        
                    }
                }
            }
        }
    }
}

#Preview {
    DailyBigElement(nameOfHabit: "Чистить зубы", dateHabit: "Пон, Вт, Ср, Чт, Пт, Сб, Вс", image: "infinity", inTime: "11:00", outTime: "12:00", color: "appGreen")
}
