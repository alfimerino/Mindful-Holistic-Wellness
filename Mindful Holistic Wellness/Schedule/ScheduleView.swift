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
    private let instructors = ScheduleViewModel.shared.instructors
    @State private var selectedEvent: Event?
    @State private var showingSheet = false
    var body: some View {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(eventos.indices, id: \.self) { index in
                        HStack {
                            ScheduleListRowView(event: eventos[index]).onTapGesture {
                                selectedEvent = eventos[index]
                                showingSheet.toggle()
                            }.sheet(isPresented: $showingSheet, content: {
                                ScheduleEventDetailView(selectedEvent: eventos[index], instructor: instructors[index])
                            })
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
