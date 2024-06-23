//
//  ContentView.swift
//  HabbitTracker
//
//  Created by Руслан on 22.06.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var vm = MainViewModel()
    var body: some View {
        ZStack{
            if vm.indexOfTapBar == 0 {
                DailyView()
                    
            }
            if vm.indexOfTapBar == 1 {
                WeekView()
                   
            }
            Button ("123") {
                print(vm.indexOfTapBar)
            }
            VStack {
                Spacer()
                TabBarView(index: vm.$indexOfTapBar)
            }
        }
    }
}

#Preview {
    MainView()
}
