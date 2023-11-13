//
//  ScheduleDateAndTimeView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/8/23.
//

import SwiftUI

struct ScheduleDateAndTimeView: View {
    var event: Event
    var body: some View {
        VStack(alignment: .leading) {
            Text(event.date)
                .font(.footnote)
                .foregroundStyle(event.cancelled ? Color.red : Color.blue)
                .bold()
            if event.cancelled {
                Text("CANCELLED")
                    .font(.footnote)
                    .foregroundStyle(Color.red)
                    .fontWeight(.heavy)
            } else {
                Text(event.time)
                    .font(.footnote)
                    .foregroundStyle(Color.blue)
            }
        }
    }
}

#Preview {
    ScheduleDateAndTimeView(event: ScheduleViewModel.shared.events.first!)
}
