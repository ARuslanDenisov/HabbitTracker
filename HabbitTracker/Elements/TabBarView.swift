//
//  TabBarView.swift
//  HabbitTracker
//
//  Created by Руслан on 24.06.2024.
//

import SwiftUI

struct TabBarView: View {
    @Binding var index: Int
    @State var indexAnim: Int = 1
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 40)
            RoundedRectangle(cornerRadius: 60)
                .frame(width: 50, height: 50)
                .padding(9)
                .foregroundStyle(.appGreen)
                .offset(x: indexAnim == 1 ? 0 : indexAnim == 0 ? -105 : 105)
                .shadow(color: .appGreen.opacity(0.7), radius: 15)
            HStack {
                Button {
                    self.index = 0
                    indexAnim = 0
                } label: {
                    ZStack {
                        Image(systemName: "person")
                            .resizableToFit()
                            .frame(width: 30)
                            .foregroundStyle(indexAnim == 0 ? .black : .appGray)
                            .scaleEffect(indexAnim == 0 ? 1.1 : 0.9, anchor: .center)
                    }
                }
                Spacer()
                Button {
                    self.index = 1
                    indexAnim = 1
                } label: {
                    ZStack {
                        Image(systemName: "plus")
                            .resizableToFit()
                            .frame(width: 30)
                            .foregroundStyle(indexAnim == 1 ? .black : .appGray)
                    }
                }
                Spacer()
                Button {
                    self.index = 2
                    indexAnim = 2
                } label: {
                    ZStack {
                        Image(systemName: "gearshape.fill")
                            .resizableToFit()
                            .frame(width: 30)
                            .foregroundStyle(indexAnim == 2 ? .black : .appGray)
                            .scaleEffect(indexAnim == 2 ? 1.1 : 0.9, anchor: .center)
                    }
                }
            }
            
            .frame(width: 240)
        }
        .animation(.easeInOut, value: indexAnim)
        
        .frame(width: 300, height: 80)
    }
}

#Preview {
    TabBarView(index: .constant(1))
}
