//
//  MainViewModel.swift
//  HabbitTracker
//
//  Created by Руслан on 24.06.2024.
//

import SwiftUI

class MainViewModel : ObservableObject {
    @AppStorage("Onboarding")var onBoarding : Bool = false
    @State var indexOfTapBar: Int = 0
}
