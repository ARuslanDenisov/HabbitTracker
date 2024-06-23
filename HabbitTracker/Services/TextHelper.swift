//
//  TextHelper.swift
//  HabbitTracker
//
//  Created by Руслан on 23.06.2024.
//

import Foundation

struct TextHelper {
    static let shared = TextHelper() ; private init() {}

    func getText (_ text: [String] ) -> String {
        var textOut = ""
        for str in text {
            switch str.lowercased() {
            case "понедельник" : textOut.append(", Пон")
            case "вторник" : textOut.append(", Вт")
            case "среда" : textOut.append(", Ср")
            case "четверг" : textOut.append(", Чт")
            case "пятница" : textOut.append(", Пт")
            case "суббота" : textOut.append(", Сб")
            case "воскресенье" : textOut.append(", Вс")
            default : print("textHelper switch mistake")
            }
        }
        textOut.removeLast(2)
        return textOut
    }
}
