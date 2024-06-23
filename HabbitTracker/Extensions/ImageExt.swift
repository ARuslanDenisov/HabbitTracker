//
//  ImageExt.swift
//  HabbitTracker
//
//  Created by Руслан on 23.06.2024.
//

import SwiftUI

extension Image {
    func resizableToFit() -> some View {
        resizable()
            .scaledToFit()
    }

    func resizableToFill() -> some View {
        resizable()
            .scaledToFill()
    }
}
