//
//  DailyElement.swift
//  HabbitTracker
//
//  Created by Руслан on 22.06.2024.
//

import SwiftUI

struct DailySmallElement: View {
    var nameOfHabit: String
    var dateHabit: String
    var image: String
    var inTime: String
    var outTime: String
    var color: String
    
    var body: some View {
        ZStack{
            EllipticalGradient(colors:[Color(color), .appGray], center: .bottomTrailing, startRadiusFraction: 0.4, endRadiusFraction: 1)
            VStack(alignment: .leading){
                Text(nameOfHabit)
                    .font(.custom(.bold, size: 20))
                    .lineLimit(2)
                Spacer()
                Text(dateHabit)
                    .font(.custom(.regular, size: 10))
                Spacer()
                Spacer()
                Image(systemName: image)
                Spacer()
                Spacer()
                VStack{
                    Text(inTime)
                        .font(.custom(.light, size: 10))
                    Text(outTime)
                        .font(.custom(.light, size: 10))
                }
            }
            .padding(4)
            .padding(.vertical, 10)
        }
        .frame(width: 150, height: 200)
        .clipShape(.rect(cornerRadius: 20))
    }
    
}

#Preview {
    DailySmallElement(nameOfHabit: "Чистить зубы", dateHabit: "Пон, Вт, Ср, Чт, Пт, Сб, Вс", image: "infinity", inTime: "11:00", outTime: "12:00", color: "appGreen")
}
