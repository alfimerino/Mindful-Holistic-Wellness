//
//  ScheduleListRowView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/6/23.
//

import SwiftUI

struct ScheduleListRowView: View {
    var event: Event
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text(event.date)
                    .font(.footnote)
                    .foregroundStyle(event.cancelled ? Color.red : Color.blue)
                    .bold()
                if event.cancelled {
                    Text("CANCELLED")
                        .font(.footnote)
                        .fontWeight(.heavy)
                } else {
                    Text(event.time)
                        .font(.footnote)
                        .foregroundStyle(event.cancelled  ? Color.red : Color.blue)
                }
            }

            VStack(alignment: .leading) {
                HStack {

                    Text(event.title)
                        .font(.headline)
                        .bold()
                }
                //                Text(Image(systemName: "mappin.and.ellipse")) +
                Text("\(" ")\(event.location)")
                    .font(.footnote)
            }
        }
        .foregroundStyle(event.cancelled ? Color.red : Color.primary)
    }
}

#Preview {
    ScheduleListRowView(event: ScheduleViewModel.shared.events.first!)
}
