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
    var height: CGFloat = 150
    var width: CGFloat = 350
    
    var body: some View {
        ZStack {
            EllipticalGradient(colors:[Color(color), .appGray], center: .trailing, startRadiusFraction: 0.4, endRadiusFraction: 1)
            RadialGradient(colors: [.clear, .appDarkGray], center: .bottomLeading, startRadius: 55, endRadius: 54)
                .overlay {
                    Path{ path in
                            path.move(to: CGPoint(x: width * 5/6, y: 0))
                            path.addLine(to: CGPoint(x: width * 5/6, y: height))
                        }
                    .stroke(style: StrokeStyle( dash: [7]))
                }
            VStack {
                Spacer()
                HStack() {
                    Text(nameOfHabit)
                        .font(.custom(.semibold, size: 30))
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .frame(width: 250)
                    Spacer()
                    
                }
                Spacer()
                HStack {
                    Image(systemName: image)
                    Spacer()
                    Text(dateHabit)
                        .font(.custom(.regular, size: 15))
                        .lineLimit(2)
                    Spacer()
                    VStack {
                        Text(inTime)
                            .font(.custom(.light, size: 10))
                        Text(outTime)
                            .font(.custom(.light, size: 10))
                    }
                }
                .frame(height: 40)
            }
            .padding(.horizontal, 15)
        }
        .clipShape(.rect(cornerRadius: 25))
        .frame(width: width, height: height)
    }
}

#Preview {
    DailyBigElement(nameOfHabit: "Чистить зубы мятной пастой", dateHabit: "Пон, Вт, Ср, Чт, Пт, Сб, Вс", image: "infinity", inTime: "11:00", outTime: "12:00", color: "appGreen")
}

