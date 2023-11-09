//
//  ScheduleView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/9/23.
//

import SwiftUI

struct ScheduleView: View {
    @AppStorage("showLaunchScreen") var firstLaunch = false
    @ObservedObject private var scheduleViewModel = ScheduleViewModel.shared
    let columns = [
        GridItem(.flexible(minimum: 0, maximum: .infinity)),
        ]
    private let eventos = ScheduleViewModel.shared.eventos
    var body: some View {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(eventos) { event in
                        HStack {
                            ScheduleListRowView(event: event)
                            Spacer()
                        }
                    }.padding(.horizontal).frame(maxHeight: 300)
                }
            }

            .navigationTitle("Schedule")
        .fullScreenCover(isPresented: $firstLaunch, content: {
            WelcomeView()
        })
    }
}

#Preview {
    ScheduleView()
}
