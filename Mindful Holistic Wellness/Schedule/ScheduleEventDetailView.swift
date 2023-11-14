//
//  ScheduleEventDetailView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/9/23.
//

import SwiftUI

struct ScheduleEventDetailView: View {
    @State private var pickerSelection = 0
    var selectedEvent: Event
    var instructor: Instructor
    var body: some View {
        VStack {
           SheetDismissButton()
            HStack(alignment: .top) {
                ProfileImageView(imageString: instructor.imageName)
                VStack(alignment: .leading) {
                    Text(selectedEvent.title)
                        .font(.title2)
                        .bold()
                    Text(selectedEvent.date)
                        .font(.headline)
                    Text(selectedEvent.time)
                        .font(.headline)
                    Text(selectedEvent.location)
                        .font(.headline)
                        .bold()
                        .padding(.top, 2)
                }.padding(.bottom)
            }.padding(.bottom, 5)
            Picker(selection: $pickerSelection) {
                Text("Event Details").tag(0)
                Text("About Instructor").tag(1)
            } label: {

            }.pickerStyle(.segmented)
                .padding([.leading, .trailing])
            if pickerSelection == 0 {
                Text(selectedEvent.description).padding()
            } else if pickerSelection == 1 {
                Text(instructor.bio).padding()
            }
        }.onAppear()
        Spacer()
    }
}

#Preview {
    ScheduleEventDetailView(selectedEvent: Event.beachSideEvent, instructor: Instructor.aurora)
}
