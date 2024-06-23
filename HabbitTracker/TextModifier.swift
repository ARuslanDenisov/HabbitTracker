//
//  TextModifier.swift
//  HabbitTracker
//
//  Created by Руслан on 23.06.2024.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(.extraBold, size: 20))
    }
}
