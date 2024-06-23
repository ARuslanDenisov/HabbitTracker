//
//  FontsData.swift
//  HabbitTracker
//
//  Created by Руслан on 23.06.2024.
//

import SwiftUI

enum HabitFonts: String {
    case bold = "OpenSans-Bold"
    case extraBold = "OpenSans-ExtraBold"
    case light = "OpenSans-Light"
    case regular = "OpenSans-Regular"
    case semibold = "OpenSans-semibold"

}

extension Font {
    static func custom(_ font: HabitFonts, size: CGFloat) -> Font {
        Font.custom(font.rawValue, size: size)
    }
}
