//
//  ContentView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/6/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("showLaunchScreen") var firstLaunch = false
    @ObservedObject private var scheduleViewModel = ScheduleViewModel.shared
    let columns = [
//            GridItem(.flexible(minimum: 0, maximum: 120)),
        
            GridItem(.flexible(minimum: 0, maximum: .infinity)),
        ]
    private let eventos = ScheduleViewModel.shared.eventos
    var body: some View {
//        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(eventos) { event in
                        HStack {
                            ScheduleListRowView(event: event)
                        }
                    }.padding(.horizontal).frame(maxHeight: 100)
                }
            }

            .navigationTitle("Schedule")
//        }
        .fullScreenCover(isPresented: $firstLaunch, content: {
            WelcomeView()
        })
    }
}

#Preview {
    ContentView()
}
